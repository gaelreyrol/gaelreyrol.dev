{
  description = "Zola development environment with Tailwind and Dhall";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
    flake-utils.url = "github:numtide/flake-utils";

    dhall-resume.url = "github:gaelreyrol/dhall-resume";
    dhall-resume.inputs.nixpkgs.follows = "nixpkgs";
    dhall-resume.inputs.flake-utils.follows = "flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils, dhall-resume }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        buildPackages = with pkgs; [
          zola
          nodejs
          nodePackages.npm
        ];
        src = ./.;
        npmPackageLock = builtins.fromJSON (builtins.readFile (src + "/package-lock.json"));
        jsonResume = import (src + /dhall/resume) {
          Resume = dhall-resume.packages.${system}.default;
          inherit pkgs;
        };
      in
      {
        formatter = pkgs.nixpkgs-fmt;
        devShells = {
          default = pkgs.mkShell {
            packages = with pkgs; [
              dhall
              dhall-nix
              dhall-nixpkgs
              dhall-json
            ] ++ buildPackages;
          };
        };
        packages = flake-utils.lib.flattenTree rec {
          default = website;
          website = pkgs.buildNpmPackage {
            inherit (npmPackageLock) name version;
            inherit src;

            npmBuildScript = "styles:build";
            npmDepsHash = "sha256-GHNR6kWgrsfWHCDhE++yqVeNbjdx6oQDbT4bq/1JS+o=";

            nativeBuildInputs = [ ] ++ buildPackages;

            installPhase = ''
              runHook preInstall

              cp ${jsonResume} static/resume.json
              cat static/resume.json | node_modules/.bin/jsonresume-theme-even > static/resume.html
              zola build
              cp -r public $out

              runHook postInstall
            '';

            checkPhase = ''
              runHook preCheck

              zola check

              runHook postCheck
            '';
          };
          inherit jsonResume;
        };
        checks = flake-utils.lib.flattenTree {
          website = self.packages.${system}.website;
        };
      });
}

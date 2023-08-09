{
  description = "Zola development environment with Tailwind and Dhall";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
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
        formatter = nixpkgs.legacyPackages.${system}.nixpkgs-fmt;
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
        packages = flake-utils.lib.flattenTree {
          default = pkgs.buildNpmPackage {
            inherit (npmPackageLock) name version;
            inherit src;

            npmBuildScript = "styles:build";
            npmDepsHash = "sha256-6g8XV+4cVuX6ReksNwuQuKcWp1zwDDygtf2ln547sbs=";

            nativeBuildInputs = [ ] ++ buildPackages;

            installPhase = ''
              runHook preInstall

              cp ${jsonResume} static/resume.json
              cat static/resume.json | node_modules/.bin/jsonresume-theme-even > static/resume.html
              zola build
              cp -r public $out

              runHook postInstall
            '';
          };
          inherit jsonResume;
        };
      });
}

{
  description = "Zola development environment with Tailwind and Dhall";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs { inherit system; };
        buildPackages = with pkgs; [
          zola
          nodejs
          nodePackages.npm
          dhall-json
        ];
        src = ./.;
        npmPackageLock = builtins.fromJSON (builtins.readFile (src + "/package-lock.json"));
      in
      {
        devShells = {
          default = pkgs.mkShell {
            packages = [] ++ buildPackages;
          };
        };
        packages = flake-utils.lib.flattenTree {
          default = pkgs.buildNpmPackage {
            inherit (npmPackageLock) name version;
            inherit src;

            npmBuildScript = "styles:build";
            npmDepsHash = "sha256-6N3y2OPmSpgWrbIPS3JJ1i06icZGq4dx+zMUCiM7mRE=";

            nativeBuildInputs = [] ++ buildPackages;

            installPhase = ''
              runHook preInstall

              # dhall-to-json --file dhall/resume.dhall --output static/resume.json
              # cat static/resume.json | node_modules/.bin/jsonresume-theme-even > static/resume.html
              zola build
              cp -r public $out

              runHook postInstall
            '';
          };
        };
      });
}

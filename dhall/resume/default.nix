{ pkgs, Resume }:

let
  code = pkgs.dhallPackages.buildDhallPackage {
    name = "Resume";
    code = ./default.dhall;
    dependencies = [ Resume ];
    source = true;
  };
  drv = pkgs.stdenv.mkDerivation {
    name = "dhall-resume-to-json";

    buildCommand = ''
      dhall-to-json <<< "${code}/source.dhall" > $out
    '';

    buildInputs = [ pkgs.dhall-json ];
  };
in
drv

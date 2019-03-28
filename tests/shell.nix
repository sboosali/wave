#!/usr/bin/env nix-shell

##################################################
{ nixpkgs ? <nixpkgs>
, pkgs    ? (import nixpkgs {}).pkgs
}:

##################################################
let

inherit (pkgs) stdenv;

in
##################################################
stdenv.mkDerivation {

  #----------------------------#

  name = "haskell-wave-environment";

  description = ''
  Programs for integration-testing of the « wave » library.
  '';

  #----------------------------#

  # The packages in the « buildInputs » list
  # will be added to the « $PATH » in our shell.

  buildInputs = with pkgs; [

    sox

  ];

  shellHook = ''
    export HASKELL_WAVE_DEVELOP=1
  '';

  #----------------------------#
}
##################################################
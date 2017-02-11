with (import <nixpkgs> {});

let
  className = "Hello";
in
  derivation {
    name = "simple-java-example";
    builder = "${bash}/bin/bash";
    args = [ ./simple_builder.sh ];
    inherit jdk jre makeWrapper bash coreutils;
    inherit className;
    system = builtins.currentSystem;
    src = ./files;
  }

{ pkgs ? import<nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = with pkgs; [ 
      gobject-introspection
      playerctl
      (python3.withPackages (python-packages: with python-packages; [
        pygobject3
      ]))
    ];
  }

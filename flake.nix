{
  description = "SakoAMP Devel Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";
  };

  outputs = {
    self,
    nixpkgs,
  }: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    nativeBuildInputs = with pkgs; [
      # js
      nodejs
      yarn
      # rust
      rustup
      cargo
      pkg-config # this works for rust too?
    ];
    buildInputs = with pkgs; [
      cargo-tauri
      glib.dev
      glibc.dev
      webkitgtk.dev
    ];
  in {
    devShells.${system}.default = pkgs.mkShell {
      packages = [
        nativeBuildInputs
        buildInputs
      ];
    };
  };
}

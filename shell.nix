with import <nixpkgs> {};

mkShell {
  name = "SakoAmp - Nix Shell";
  nativeBuildInputs = [
    nodejs
    rust
    yarn
    rustup
    cargo
  ];
  buildInputs = [
    cargo-tauri
  ];

}

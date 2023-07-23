with import <nixpkgs> {};

mkShell {
  name = "SakoAmp - Nix Shell";
  nativeBuildInputs = [
    # js 
    nodejs
    yarn
    # rust
    rustup
    cargo
  ];
  buildInputs = [
    cargo-tauri
  ];

}

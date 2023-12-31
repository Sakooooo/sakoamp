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
    pkg-config # this works for rust too?
  ];
  buildInputs = [
    cargo-tauri
    glib.dev
    glibc.dev
    webkitgtk.dev
  ];

}

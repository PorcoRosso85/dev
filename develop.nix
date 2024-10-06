{ pkgs }:

pkgs.mkShell {
  buildInputs = [
    pkgs.helix
    pkgs.zellij
    pkgs.starship
    pkgs.curl
    pkgs.wget
    pkgs.unzip
    pkgs.git
    pkgs.gh
    pkgs.tre-command
    pkgs.fzf
    pkgs.ripgrep
    pkgs.fd
    pkgs.bat
    pkgs.zoxide
    pkgs.eza
    pkgs.lazygit
    pkgs.broot

    # pkgs.mise

    pkgs.nixd
    pkgs.nixfmt
    pkgs.nushell
    pkgs.rustup

    pkgs.marksman

    
  
  ];

  # cargo install lsp-ai -F llama_cpp -F metal # cargoのpath設定が必要
  shellHook = ''
    echo "Hello Dev!!."
    export "PATH=$PATH:$HOME/.cargo/bin" && echo "exported path for cargo $HOME/.cargo/bin"

    cargo install lsp-ai
    # cargo install --git https://github.com/euclio/mdpls
    # cargo install --git https://github.com/astral-sh/uv uv

    source $HOME/.common_profile

  '';

}

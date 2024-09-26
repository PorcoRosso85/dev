{ pkgs }:

pkgs.mkShell {
  buildInputs = [
    pkgs.zellij
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
    pkgs.nixd
    pkgs.nixfmt
  
    pkgs.mise

    pkgs.docker
    pkgs.lazydocker

    pkgs.rustup
  
    # pkgs.shell
    # pkgs.shfmt # shell formatter, https://note.com/navitime_tech/n/n346d073de9c7
    pkgs.nushell
  
  ];

  # cargo install lsp-ai -F llama_cpp -F metal # cargoのpath設定が必要
  shellHook = ''
    echo "Hello Dev!!."
    export "PATH=$PATH:$HOME/.cargo/bin" && echo "exported path for cargo $HOME/.cargo/bin"

    cargo install lsp-ai

  '';

}

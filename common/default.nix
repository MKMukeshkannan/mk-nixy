{ inputs, pkgs, ... }:
{
  environment.systemPackages = [
    # pkgs.wezterm
    pkgs.neovim
    pkgs.zoxide
    pkgs.zsh
    pkgs.git
    pkgs.ripgrep
    pkgs.tmux
    pkgs.stylua

    # language servers
    pkgs.lua-language-server
    pkgs.nil
    pkgs.bash-language-server
    pkgs.typescript-language-server
    pkgs.prettier
    pkgs.vscode-css-languageserver
    pkgs.tailwindcss-language-server


    pkgs.fastfetch

    (import ../scripts/muxses.nix { inherit pkgs; })
  ];

  nix.settings.experimental-features = "nix-command flakes";
}

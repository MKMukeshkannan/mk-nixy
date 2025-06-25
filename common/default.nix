{ pkgs, ... }:
{
  environment.systemPackages = [
    # pkgs.wezterm
    # pkgs.neovim
    pkgs.zoxide
    pkgs.zsh
    pkgs.git
    pkgs.ripgrep
    pkgs.tmux

    (import ../scripts/muxses.nix { inherit pkgs; })
  ];

  nix.settings.experimental-features = "nix-command flakes";
}

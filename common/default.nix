{ pkgs, ... }:
{
  environment.systemPackages = [
    pkgs.wezterm
    pkgs.neovim
    pkgs.zoxide
    pkgs.fish
    pkgs.git
  ];

  nix.settings.experimental-features = "nix-command flakes";
}

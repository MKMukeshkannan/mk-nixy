{ inputs, ... }:
{
  imports = [
    ./fish.nix
    ./wezterm.nix
  ];

  home.packages = [
    inputs.nixvim.packages."aarch64-darwin".default
  ];

  home.username = "mukeshkannan";
  home.homeDirectory = "/Users/mukeshkannan";
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

}

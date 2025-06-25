{ pkgs, ... }:
{

  environment.systemPackages = [
    pkgs.yabai
    pkgs.skhd
    pkgs.raycast
    pkgs.iina
    pkgs.obsidian
    pkgs.coreutils
    # pkgs.karabiner-elements
  ];
}

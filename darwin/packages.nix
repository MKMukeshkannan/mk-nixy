{ pkgs, ... }:
{

  environment.systemPackages = [
    pkgs.yabai
    pkgs.skhd
  ];
}

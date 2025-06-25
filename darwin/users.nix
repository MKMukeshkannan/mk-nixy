{ pkgs, ... }:
{

  programs.zsh.enable = true;

  users = {
    users = {
      mukeshkannan = {
        shell = pkgs.zsh;
        description = "ITZ ME!!!";
        home = "/Users/mukeshkannan";
      };
    };
  };
}

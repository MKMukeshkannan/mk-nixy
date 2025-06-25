{
  programs = {
    direnv = {
      enable = true;
      enableZshIntegration = true;
      nix-direnv.enable = true;
    };

    zsh.enable = true; # see note on other shells below
  };
}

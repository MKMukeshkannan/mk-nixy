{ ... }:
{
  imports = [
    ./users.nix
    ./packages.nix
  ];

  system.stateVersion = 6;
  system.defaults = {
    dock.autohide = true;
    dock.persistent-apps = [
      # "${pkgs.obsidian}/Applications/Obsidian.app"
    ];
    finder.FXPreferredViewStyle = "clmv";
    loginwindow.GuestEnabled = false;
    NSGlobalDomain.AppleICUForce24HourTime = true;
    NSGlobalDomain.AppleInterfaceStyle = "Dark";
    NSGlobalDomain.KeyRepeat = 2;
    NSGlobalDomain.AppleShowAllExtensions = true;
    NSGlobalDomain._HIHideMenuBar = true;
  };
}

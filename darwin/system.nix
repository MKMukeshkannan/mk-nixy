{pkgs,...}:
{
  nixpkgs.config.allowUnfree = true;

  environment.shells = [ pkgs.zsh ];

  system.stateVersion = 6;
  system.defaults.CustomUserPreferences = {
    "com.apple.desktopservices" = {
      DSDontWriteNetworkStores = true;
      DSDontWriteUSBStores = true;
    };
    "com.apple.screencapture" = {
      location = "~/Downloads";
      type = "png";
    };
    "com.apple.screensaver" = {
      askForPassword = 1;
      askForPasswordDelay = 0;
    };
    "com.apple.finder" = {
      ShowExternalHardDrivesOnDesktop = false;
      ShowHardDrivesOnDesktop = false;
      ShowMountedServersOnDesktop = false;
      ShowRemovableMediaOnDesktop = false;
      _FXSortFoldersFirst = true;
      FXDefaultSearchScope = "SCcf";
    };
  };

  system.defaults = {
    dock.autohide = true;
    dock.largesize = 20;
    dock.magnification = true;
    dock.mineffect = "genie";
    dock.minimize-to-application = false;
    dock.persistent-apps = [
      # "${pkgs.wezterm}/Applications/Wezterm.app"
    ];
    dock.tilesize = 24;
    finder.FXPreferredViewStyle = "clmv";
    loginwindow.GuestEnabled = false;
    NSGlobalDomain.AppleICUForce24HourTime = false;
    NSGlobalDomain.AppleInterfaceStyle = "Dark";
    NSGlobalDomain.KeyRepeat = 2;
    NSGlobalDomain.AppleShowAllExtensions = true;
    NSGlobalDomain._HIHideMenuBar = true;
    trackpad.Clicking = true;
  };
}

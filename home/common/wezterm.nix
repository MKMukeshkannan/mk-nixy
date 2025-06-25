{ ... }:
{
  programs.wezterm = {
    enable = false;
    extraConfig = ''

      local config = wezterm.config_builder()

      config.window_background_opacity = 0.5
      config.macos_window_background_blur = 20

      config.hide_tab_bar_if_only_one_tab = true
      config.font_size = 15.0

      config.window_padding = {
        left = 2,
        right = 2,
        top = 2,
        bottom = 2,
      }
      config.window_decorations = "RESIZE"
      config.font = wezterm.font('JetBrains Mono')
      config.color_scheme = 'ayu'

      return config;
    '';
  };
}

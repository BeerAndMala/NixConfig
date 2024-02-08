{pkgs, ...}: {
  programs.wezterm = {
    enable = true;
    enableBashIntegration = true;
    enableZshIntegration = true;

    extraConfig = ''
      return {
        font = wezterm.font("JetBrainsMono Nerd Font"),
        color_scheme = "Catppuccin Mocha",
        font_size = 8,
        hide_tab_bar_if_only_one_tab = true,
      }
    '';
  };
}

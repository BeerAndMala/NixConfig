{...}: {
  home.sessionVariables = {
    NIXOS_OZONE_WL = "1";
    DISABLE_QT5_COMPAT = "0";
    DIRENV_LOG_FORMAT = "";
    WLR_DRM_NO_ATOMIC = "1";
    QT_AUTO_SCREEN_SCALE_FACTOR = "1";
    QT_WAYLAND_DISABLE_WINDOWDECORATION = "1";
    QT_QPA_PLATFORM = "wayland";
    QT_QPA_PLATFORMTHEME = "qt5ct";
    QT_STYLE_OVERRIDE = "kvantum";
    MOZ_ENABLE_WAYLAND = "1";
    #WLR_BACKEND = "vulkan";
    #WLR_RENDERER = "vulkan";
    WLR_NO_HARDWARE_CURSORS = "1";
    XDG_SESSION_TYPE = "wayland";
    SDL_VIDEODRIVER = "wayland";
    CLUTTER_BACKEND = "wayland";
    GDK_BACKEND = "wayland";
    GTK_THEME = "Catppuccin-Mocha-Compact-Lavender-Dark";
  };
}

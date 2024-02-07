{
  inputs,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    swaybg
    inputs.hypr-contrib.packages.${pkgs.system}.grimblast
    hyprpicker
    wofi
    grim
    slurp
    wl-clipboard
    wf-recorder
    glib
    wayland
  ];

  systemd.user.targets.hyprland-session.Unit.Wants = ["xdg-desktop-autostart.target"];
  wayland.windowManager.hyprland = {
    enable = true;
    xwayland = {
      enable = false;
      # hidpi = true;
    };
    systemd.enable = true;
  };
}

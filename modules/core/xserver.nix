{pkgs, ...}: {
  services.xserver = {
    enable = true;
    xkb.layout = "us";
    xkb.options = "caps:escape";
    libinput = {
      enable = true;
      touchpad.naturalScrolling = false;
    };
  };
  services.displayManager.sddm = {
    enable = true;
    wayland.enable = true;
    settings = {
      Theme = {
        Current = "chili";
        ThemeDir = "${pkgs.sddm-chili-theme}/share/sddm/themes";
      };
    };
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";

  environment.systemPackages = with pkgs; [
    lxqt.lxqt-policykit
    sddm-chili-theme
  ];
}

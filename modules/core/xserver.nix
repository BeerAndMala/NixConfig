{pkgs, ...}: {
  #services.xserver = {
  #  enable = true;
  #  displayManager.sddm = {
  #    enable = true;
  #    wayland.enable = true;
  #  };
  #  xkb.layout = "us";
  #  xkb.options = "caps:escape";
  #  libinput = {
  #    enable = true;
  #  };
  #};
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}

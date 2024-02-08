{pkgs, ...}: {
  services.zfs.autoScrub.enable = true;
  services.zfs.autoScrub.interval = "weekly";
  services.zfs.trim.enable = true;

  programs.zsh.enable = true;
}

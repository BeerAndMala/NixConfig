{ pkgs, ... }:
{
  services.zfs.autoScrub.enable = true;
  services.zfs.autoScrub.interval = "quarterly";
  services.zfs.trim.enable = true;

  programs.zsh.enable = true;
}

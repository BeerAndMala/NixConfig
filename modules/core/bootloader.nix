{ pkgs, ... }:
{
  boot.loader.efi.canTouchEfiVariables = true;
  boot.loader.systemd-boot.enable = true;
  boot.loader.systemd-boot.configurationLimit = 3;

  boot.supportedFilesystems = ["zfs"];
  boot.zfs.requestEncryptionCredentials = true;
}

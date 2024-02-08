{
  inputs,
  nixpkgs,
  ...
}: let
  system = "x86_64-linux";
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  lib = nixpkgs.lib;
in {
  imports = [
    ./bootloader.nix
    ./hardware.nix
    ./zfs.nix
    ./xserver.nix
    ./network.nix
    ./bluetooth.nix
    ./samba.nix
    ./pipewire.nix
    ./security.nix
    ./services.nix
    ./steam.nix
    ./program.nix
    ./system.nix
    ./user.nix
    ./wayland.nix
    ./xserver.nix
    ./virtualization.nix
  ];
}

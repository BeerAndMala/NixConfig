{ inputs, nixpkgs, ...}:
let
  system = "x86_64-linux";
  pkgs = import nixpkgs {
    inherit system;
    config.allowUnfree = true;
  };
  lib = nixpkgs.lib;
in {
  imports = [
    ../../modules/core/default.nix
  ];

  boot.initrd.availableKernelModules = [ "xhci_pci" "thunderbolt" "nvme" "usb_storage" "sd_mod" "sdhci_pci" ];
  boot.initrd.kernelModules = [ ];
  boot.kernelModules = [ "kvm-intel" ];
  boot.extraModulePackages = [ ];

  fileSystems."/" = {
    device = "NIXROOT/root";
    fsType = "zfs";
  };

  fileSystems."/boot" = {
    device = "/dev/disk/by-uuid/03D4-5C12";
    fsType = "vfat";
  };

  fileSystems."/home" = {
    device = "NIXROOT/home";
    fsType = "zfs";
  };

  swapDevices = [ ];

  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  powerManagement.cpuFreqGovernor = lib.mkDefault "powersave";
  hardware.cpu.intel.updateMicrocode = true;
  hardware.enableRedistributableFirmware = true;

  environment.systemPackages = with pkgs; [
    wireguard-tools
  ];

  networking = {
    hostName = "nix76";
    hostId = "571d600f";

    wg-quick.interfaces = {
      bam = {
        address = [ "10.42.42.4/32" ];
        privateKeyFile = "/root/wireguard-keys/bam_privatekey";

        peers = [{
          publicKey = "0unz3EeOAzEz9fDrovN+9yDB3Usoy836deKHN/zct0I=";
          presharedKeyFile = "/root/wireguard-keys/bam_presharedkey";
          allowedIPs = [ "10.42.42.0/24" "192.168.50.0/24" ];
          endpoint = "223.25.71.24:51820"; # home.ben.sh
          persistentKeepalive = 25;
        }];
      };
    };
  };
}

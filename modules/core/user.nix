{
  pkgs,
  inputs,
  ...
}: {
  imports = [inputs.home-manager.nixosModules.home-manager];

  home-manager = {
    useUserPackages = true;
    useGlobalPkgs = true;
    extraSpecialArgs = {inherit inputs;};
    users.bam = {
      imports = [
        ./../home
      ];
      home.username = "bam";
      home.homeDirectory = "/home/bam";
      home.stateVersion = "23.11";
      programs.home-manager.enable = true;
    };
  };

  users.users.bam = {
    isNormalUser = true;
    description = "bam";
    extraGroups = [
      "audio"
      "dialout"
      "networkmanager"
      "nixconfig"
      "wheel"
      "wireshark"
    ];
    shell = pkgs.zsh;
    openssh = {
      authorizedKeys.keys = [
        "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGdjk4tFr5OoR40mmnB5Lt66P5GUw/FJmxRDVd3DMCrZxAa9eWehq5u1ZibSz1mB1eo9VPEvUpo9GDPom0Ke0RxBBAmyHJn5Lwdk+/wjezYTjcGMp8jfk5E3aXuDYlc5cL27TirrGV001glpJlUbQxujWHhRuu90tHz+8W6TASG065c4nA9A2dT7j26Hxku1C4iOzv8KdYmtif9RvWAfH6/4C5jQfhXM6dhhmiH56uwCRErHHjjYHzMu2Ybbbm+hVID0LvGTIv1WOAhLLYuBM+hEqfO4/aVdXcDINlU2Yk/4Nrr9f5vFr3cSK/ss60SgsEY6SRguGRd9LdPKof+pjE3sw1FElxxAqY0jo9V0iDD/cs+D9ZINUkHZrifrom7Ku0NwMQOfGGvBXZlwb4ymRjgxpMfMETNY/b0avifxa6e9PayPr3xxLds/dp2W9mgns9QLpwnN3IEtI4z0k0gfLbXuw560+BYDP10gEf7Jt0MFK5L07+MMhRqC83fF0NJm8= bam@benps"
        "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIOF8E7NQtWqJo9n/OGpSwHvPWt0VG22qTdSgPRNupf3Q dar@BenRoG"
      ];
    };
  };
  nix.settings.allowed-users = ["bam"];
}

{pkgs, ...}: {
  services = {
    samba-wsdd = {
      enable = true;
      #openFirewall = true;
    };
    samba = {
      enable = true;
      extraConfig = ''
        workgroup = WORKGROUP
        security = user
        server string = nix76
        netbios name = nix76
        interfaces = lo virbr0
        bind interfaces only = yes
        # note: localhost is the ipv6 localhost ::1
        hosts allow = 192.168.122. 127.0.0.1 localhost
        hosts deny = 0.0.0.0/0
        guest account = nobody
        map to guest = bad user
      '';
      shares = {
        Dev = {
          path = "/home/bam/Dev";
          browseable = "yes";
          "read only" = "no";
          "create mask" = "0644";
          "directory mask" = "0755";
        };
        WinExchange = {
          path = "/home/bam/Documents/WinExchange";
          browseable = "yes";
          "read only" = "no";
          "create mask" = "0644";
          "directory mask" = "0755";
        };
      };
    };
  };
}

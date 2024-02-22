{
  inputs,
  pkgs,
  ...
}: {
  programs.ssh = {
    enable = true;
    matchBlocks = {
      amdben = {
        hostname = "10.42.42.1";
        user = "ben";
      };
      benps = {
        hostname = "10.42.42.3";
        user = "bam";
      };
      win10 = {
        hostname = "192.168.122.23";
        user = "ben";
      };
      incus-dev-sg = {
        hostname = "192.168.0.125";
        user = "ubuntu";
      };
    };
  };

  home.file.".config/nixpkgs/config.nix".text = ''
    {
      packageOverrides = pkgs: {
        nur = import (builtins.fetchTarball "https://github.com/nix-community/NUR/archive/master.tar.gz") {
          inherit pkgs;
        };
      };
    }
  '';

  home.file.".XCompose".text = ''
    include "%L"

    <Multi_key> <s> <f> : "¯\\_(ツ)_/¯"
  '';

  home.file.".config/gitui/mocha.ron".source = "${inputs.catppuccin-gitui}/theme/mocha.ron";

  home.file.".config/helix/themes/catppuccin_mocha.toml".source = "${inputs.catppuccin-helix}/themes/default/catppuccin_mocha.toml";
  home.file.".config/helix/config.toml".text = ''
    theme = "catppuccin_mocha"

    [editor]
    true-color = true
  '';

  home.file.".config/bottom/bottom.toml".text =
    ''
    ''
    + builtins.readFile "${inputs.catppuccin-bottom}/themes/mocha.toml";

  home.file.".config/spotify-player/theme.toml".source = "${inputs.catppuccin-spotify-player}/src/theme.toml";
  home.file.".config/spotify-player/app.toml".text = ''
    theme = "Catppuccin-mocha"
  '';
}

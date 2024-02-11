{
  pkgs,
  lib,
  config,
  ...
}: {
  programs.firefox = {
    enable = true;

    profiles.bam = {
      settings = {};
      isDefault = true;
      extensions = with pkgs.nur.repos.rycee.firefox-addons; [
        ublock-origin
        bitwarden
        tree-style-tab
        i-dont-care-about-cookies
      ];
      extraConfig = builtins.readFile ./user.js;
    };
  };
}

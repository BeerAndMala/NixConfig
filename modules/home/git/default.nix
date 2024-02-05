{ pkgs, ... }:
{
  programs.git = {
    enable = true;

    userName = "BeerAndMala";
    userEmail = "beer@ben.sh";

    extraConfig = {
      init.defaultBranch = "main";
      credential.helper = "store";
    };
  };

  home.packages = [ pkgs.gh ];
}

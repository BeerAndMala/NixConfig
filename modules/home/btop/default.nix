{inputs, pkgs, ...}:
let
 theme =  pkgs.fetchFromGitHub{
  owner = "catppuccin";
  repo = "btop";
  rev = "c646919";
  hash = "sha256-jodJl4f2T9ViNqsY9fk8IV62CrpC5hy7WK3aRpu70Cs=";
};
in {
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "catppuccin_mocha";
      theme_background = false;
      update_ms = 500;
    };
  };

  home.file.".config/btop/themes/catppuccin_mocha.theme".source = "${theme}/themes/catppuccin_mocha.theme";
}

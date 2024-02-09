{
  inputs,
  pkgs,
  ...
}: {
  programs.btop = {
    enable = true;

    settings = {
      color_theme = "catppuccin_mocha";
      theme_background = false;
      update_ms = 500;
    };
  };

  home.file.".config/btop/themes/catppuccin_mocha.theme".source = "${inputs.catppuccin-btop}/themes/catppuccin_mocha.theme";
}

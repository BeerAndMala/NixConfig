{
  inputs,
  pkgs,
  ...
}: {
  programs.bat = {
    enable = true;
  };

  home.file.".config/bat/themes/Catppuccin-mocha.tmTheme".source = "${inputs.catppuccin-bat}/Catppuccin-mocha.tmTheme";
  home.file.".config/bat/config".text = ''
    # Set the theme
    --theme="Catppuccin-mocha"
  '';
}

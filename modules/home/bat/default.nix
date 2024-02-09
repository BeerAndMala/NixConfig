{inputs, pkgs, ...}:
let
 theme =  pkgs.fetchFromGitHub{
  owner = "catppuccin";
  repo = "bat";
  rev = "ba4d168";
  hash = "sha256-6WVKQErGdaqb++oaXnY3i6/GuH2FhTgK0v4TN4Y0Wbw=";
};
in {
  programs.bat = {
    enable = true;
  };
 
  home.file.".config/bat/themes/Catppuccin-mocha.tmTheme".source = "${theme}/Catppuccin-mocha.tmTheme";
  home.file.".config/bat/config".text = ''
    # Set the theme
    --theme="Catppuccin-mocha"
  '';
}

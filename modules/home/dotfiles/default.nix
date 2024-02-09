{inputs, pkgs, ...}:
let
 gitui_theme =  pkgs.fetchFromGitHub{
  owner = "catppuccin";
  repo = "gitui";
  rev = "3997836";
  hash = "sha256-kWaHQ1+uoasT8zXxOxkur+QgZu1wLsOOrP/TL+6cfII=";
 };
 helix_theme =  pkgs.fetchFromGitHub{
  owner = "catppuccin";
  repo = "helix";
  rev = "8313c72";
  hash = "sha256-qEXhj/Mpm+aqThqEq5DlPJD8nsbPov9CNMgG9s4E02g=";
 };
in {
  home.file.".config/gitui/mocha.ron".source = "${gitui_theme}/theme/mocha.ron";

  home.file.".config/helix/themes/catppuccin_mocha.toml".source = "${helix_theme}/themes/default/catppuccin_mocha.toml";
  home.file.".config/helix/config.toml".text = ''
   theme = "catppuccin_mocha"

   [editor]
   true-color = true
  '';
}

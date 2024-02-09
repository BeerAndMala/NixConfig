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
 bottom_theme =  pkgs.fetchFromGitHub{
  owner = "catppuccin";
  repo = "bottom";
  rev = "c0efe90";
  hash = "sha256-VaHX2I/Gn82wJWzybpWNqU3dPi3206xItOlt0iF6VVQ=";
 };
in {
  home.file.".config/gitui/mocha.ron".source = "${gitui_theme}/theme/mocha.ron";

  home.file.".config/helix/themes/catppuccin_mocha.toml".source = "${helix_theme}/themes/default/catppuccin_mocha.toml";
  home.file.".config/helix/config.toml".text = ''
   theme = "catppuccin_mocha"

   [editor]
   true-color = true
  '';

  home.file.".config/bottom/bottom.toml".text = ''
  '' 
  + builtins.readFile "${bottom_theme}/themes/mocha.toml";
}

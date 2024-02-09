{inputs, pkgs, ...}:
let
 theme =  pkgs.fetchFromGitHub{
  owner = "catppuccin";
  repo = "gitui";
  rev = "3997836";
  hash = "sha256-kWaHQ1+uoasT8zXxOxkur+QgZu1wLsOOrP/TL+6cfII=";
};
in {
  home.file.".config/gitui/mocha.ron".source = "${theme}/theme/mocha.ron";
}

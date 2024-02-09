{
  inputs,
  pkgs,
  ...
}: {
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
}

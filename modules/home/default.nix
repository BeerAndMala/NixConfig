{inputs, ...}: {
  imports =
       [(import ./waybar)]
    ++ [(import ./firefox)]
    ++ [(import ./vscode)]
    ++ [(import ./hyprland)]
    ++ [(import ./gaming)]
    ++ [(import ./git)]
    ++ [(import ./btop)]
    ++ [(import ./bat)]
    ++ [(import ./cava)]
    ++ [(import ./kitty)]
    ++ [(import ./wezterm)]
    ++ [(import ./aseprite)]        # pixel art editor
    ++ [(import ./audacious)]       # music player
    ++ [(import ./discord)]         # discord with catppuccin theme
    ++ [(import ./swaylock)]
    ++ [(import ./wofi)]
    ++ [(import ./zsh)]
    ++ [(import ./gtk)]
    ++ [(import ./mako)]            # notification deamon
    ++ [(import ./scripts)]         # personal scripts
    ++ [(import ./starship)]
    ++ [(import ./package)];
}

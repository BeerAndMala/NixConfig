{
  pkgs,
  config,
  inputs,
  ...
}: {
  home.packages = with pkgs; [
    gamemode
    gamescope
    winetricks
    inputs.nix-gaming.packages.${pkgs.system}.proton-ge
    inputs.nix-gaming.packages.${pkgs.system}.wine-ge
  ];
}

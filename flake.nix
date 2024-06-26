{
  description = "BeerAndMala's nixos configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixos-hardware.url = "github:NixOS/nixos-hardware/master";

    nur.url = "github:nix-community/NUR";

    hypr-contrib.url = "github:hyprwm/contrib";
    hyprpicker.url = "github:hyprwm/hyprpicker";

    alejandra.url = "github:kamadorueda/alejandra/3.0.0";

    nix-gaming.url = "github:fufexan/nix-gaming";

    hyprland = {
      url = "github:hyprwm/Hyprland";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # Theming
    catppuccin-cava = {
      url = "github:catppuccin/cava";
      flake = false;
    };
    catppuccin-starship = {
      url = "github:catppuccin/starship";
      flake = false;
    };
    catppuccin-bat = {
      url = "github:catppuccin/bat";
      flake = false;
    };
    catppuccin-btop = {
      url = "github:catppuccin/btop";
      flake = false;
    };
    catppuccin-gitui = {
      url = "github:catppuccin/gitui";
      flake = false;
    };
    catppuccin-helix = {
      url = "github:catppuccin/helix";
      flake = false;
    };
    catppuccin-bottom = {
      url = "github:catppuccin/bottom";
      flake = false;
    };
    catppuccin-spotify-player= {
      url = "github:catppuccin/spotify-player";
      flake = false;
    };
  };

  outputs = {
    nixpkgs,
    unstable,
    nixos-hardware,
    self,
    ...
  } @ inputs: let
    inherit (nixpkgs.lib) nixosSystem;
    inherit (nixpkgs) lib;
  in {
    nixosConfigurations = {
      lemurpro = nixosSystem {
        specialArgs = {inherit inputs nixpkgs unstable nixos-hardware;};
        modules = [
          ./hosts/lemurpro
          ./modules/core
        ];
      };
    };
  };
}

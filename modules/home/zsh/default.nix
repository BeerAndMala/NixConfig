{
  hostname,
  config,
  pkgs,
  ...
}: {
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    enableAutosuggestions = true;
    syntaxHighlighting.enable = true;
    oh-my-zsh = {
      enable = true;
      plugins = ["git" "fzf"];
    };
    shellAliases = {
      # Utils
      c = "clear";
      vi = "hx";
      vim = "hx";
      cat = "bat";
      icat = "kitten icat";
      dsize = "du -hs";
      findw = "grep -rl";

      l = "eza --icons  -a --group-directories-first -1"; #EZA_ICON_SPACING=2
      ll = "eza --icons  -a --group-directories-first -1 --no-user --long";
      tree = "eza --icons --tree --group-directories-first";

      # Nixos
      nix-shell = "nix-shell --run zsh";
      nix-switch = "sudo nixos-rebuild switch --flake ~/nixos-config#lemurpro";
      nix-switchu = "sudo nixos-rebuild switch --upgrade --flake ~/nixos-config#lemurpro";
      nix-flake-update = "sudo nix flake update ~/nixos-config#lemurpro";
      nix-clean = "sudo nix-collect-garbage && sudo nix-collect-garbage -d && sudo rm /nix/var/nix/gcroots/auto/* && nix-collect-garbage && nix-collect-garbage -d";
      # nix-clean = "sudo nix-collect-garbage -d";
      # nix-cleanold = "sudo nix-collect-garbage --delete-old";
      # nix-cleanboot = "sudo /run/current-system/bin/switch-to-configuration boot";

      # Git
      ga = "git add";
      gaa = "git add --all";
      gs = "git status";
      gb = "git branch";
      gm = "git merge";
      gpl = "git pull";
      gplo = "git pull origin";
      gps = "git push";
      gpso = "git push origin";
      gc = "git commit";
      gcm = "git commit -m";
      gch = "git checkout";
      gchb = "git checkout -b";
      gcoe = "git config user.email";
      gcon = "git config user.name";

      g = "gitui";
      gitui = "gitui -t mocha.ron";
    };
    sessionVariables = {
      FZF_DEFAULT_OPTS = " --color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
        --color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
        --color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8";
      EDITOR = "hx";
      VISUAL = "hx";
    };
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
    options = [
      "--cmd cd"
    ];
  };
}

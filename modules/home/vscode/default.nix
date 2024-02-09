{pkgs, ...}: {
  programs.vscode = {
    enable = true;
    enableUpdateCheck = false;
    enableExtensionUpdateCheck = false;
    mutableExtensionsDir = false;

    extensions = with pkgs.vscode-extensions; [
      ms-vscode-remote.remote-ssh
      eamodio.gitlens
      mhutchie.git-graph
      oderwat.indent-rainbow

      bierner.markdown-emoji
      bierner.emojisense

      rust-lang.rust-analyzer
      tamasfe.even-better-toml
      serayuzgur.crates

      kamadorueda.alejandra
      #jnoortheen.nix-ide
      bbenoist.nix
      #brettm12345.nixfmt-vscode
      arrterian.nix-env-selector

      thenuprojectcontributors.vscode-nushell-lang

      yzhang.markdown-all-in-one
      marp-team.marp-vscode

      github.copilot

      mkhl.direnv
      ms-vscode.live-server

      # Color theme
      catppuccin.catppuccin-vsc
      catppuccin.catppuccin-vsc-icons
    ];
    userSettings = {
      "update.mode" = "none";
      "extensions.autoUpdate" = false; # This stuff fixes vscode freaking out when theres an update

      "window.titleBarStyle" = "custom"; # needed otherwise vscode crashes, see https://github.com/NixOS/nixpkgs/issues/246509
      "window.menuBarVisibility" = "toggle";
      "editor.fontFamily" = "'JetBrainsMono Nerd Font', 'SymbolsNerdFont', 'monospace', monospace";
      "editor.fontSize" = 8;
      "editor.fontLigatures" = true;
      "editor.formatOnType" = true;
      "editor.minimap.enabled" = false;
      "editor.renderControlCharacters" = false;
      "editor.scrollbar.verticalScrollbarSize" = 2;
      "editor.scrollbar.horizontalScrollbarSize" = 2;
      "editor.scrollbar.vertical" = "hidden";
      "editor.scrollbar.horizontal" = "hidden";
      "editor.mouseWheelZoom" = true;

      "git.enableCommitSigning" = true;
      "git-graph.repository.sign.commits" = true;
      "git-graph.repository.sign.tags" = true;
      "git-graph.repository.commits.showSignatureStatus" = true;

      "workbench.colorTheme" = "Catppuccin Mocha";
      "workbench.iconTheme" = "catppuccin-mocha";
      "workbench.startupEditor" = "none";
      "workbench.layoutControl.type" = "menu";
      "workbench.editor.limit.enabled" = true;
      "workbench.editor.limit.value" = 5;
      "workbench.editor.limit.perEditorGroup" = true;
      "workbench.editor.showTabs" = "single";
      "workbench.activityBar.location" = "hidden";
      "workbench.statusBar.visible" = false;
      "workbench.layoutControl.enabled" = false;

      "explorer.confirmDragAndDrop" = false;
      "explorer.openEditors.visible" = 0;
      "vsicons.dontShowNewVersionMessage" = true;
      "terminal.integrated.fontFamily" = "'JetBrainsMono Nerd Font', 'SymbolsNerdFont'";

      "files.autoSave" = "onWindowChange";
      "files.trimTrailingWhitespace" = true;
      "files.trimFinalNewlines" = true;
      "files.insertFinalNewline" = true;
      "diffEditor.ignoreTrimWhitespace" = false;

      "breadcrumbs.enabled" = false;
      "telemetry.telemetryLevel" = "off";
    };
    # Keybindings
    keybindings = [
      {
        key = "ctrl+q";
        command = "editor.action.commentLine";
        when = "editorTextFocus && !editorReadonly";
      }
      {
        key = "ctrl+s";
        command = "workbench.action.files.saveFiles";
      }
    ];
  };
}

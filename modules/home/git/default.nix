{pkgs, ...}: {
  programs.git = {
    enable = true;

    userName = "BeerAndMala";
    userEmail = "beer@ben.sh";

    extraConfig = {
      init.defaultBranch = "main";
      credential.helper = "store";

      #commit.gpgsign = "true";

      #gpg.format = "ssh";
      #gpg.ssh.allowedSignersFile = "~/.ssh/allowed_signers";
    };
  };

  home.file.".ssh/allowed_signers".text = "";

  home.packages = [pkgs.gh];
}

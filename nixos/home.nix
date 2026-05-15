{ config, pkgs, inputs, lib, ... }: {

  programs.home-manager.enable = true;

  imports = [
  ];

  home = {
    username = "klaut";
    homeDirectory = "/home/klaut";

    sessionVariables = {
      EDITOR = "nano";
      BROWSER = "firefox";
      TERMINAL = "alacritty";
      TERM = "alacritty";
      PATH = "$PATH:${config.home.homeDirectory}/go/bin";
    };

    stateVersion = "24.05"; # Don't change it
  };
}

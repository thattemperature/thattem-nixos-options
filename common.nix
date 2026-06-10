{ config, lib, ... }:

let

  cfg = config.thattem.nixos;

in

{

  options =
    let
      inherit (lib) mkEnableOption mkOption;
      inherit (lib.types) enum;
    in
    {
      thattem.nixos = {
        advanced.enable = mkEnableOption "advanced applications";
        desktop.enable = mkEnableOption "desktop environment";
        display.enable = mkEnableOption "basic display";
        hardware.enable = mkEnableOption "hardware management";
        programming.enable = mkEnableOption "programming applications";
        special.enable = mkEnableOption "encrypted settings";

        type = mkOption {
          type = enum [
            "common"
            "server"
          ];
        };
      };
    };

  config = lib.mkMerge [

    (lib.mkIf cfg.desktop.enable {
      thattem.nixos.display.enable = true;
    })

    (lib.mkIf cfg.advanced.enable {
      thattem.nixos.desktop.enable = true;
    })

  ];

}

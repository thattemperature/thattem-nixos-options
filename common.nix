{ config, lib, ... }:

let

  cfg = config.thattem.nixos;

in

{

  options =
    with lib;
    with types;
    {
      thattem.nixos = {
        hardware.enable = mkEnableOption "hardware management";
        display.enable = mkEnableOption "basic display";
        desktop.enable = mkEnableOption "desktop environment";
        advanced.enable = mkEnableOption "advanced applications";
        special.enable = mkEnableOption "encrypted settings";
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

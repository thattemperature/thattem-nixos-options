{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) enum;
    in

    let

      firmware-type = enum [
        "common"
        "intel"
        "nvidia"
        "amd"
      ];

    in

    {
      thattem.private.firmware = {
        cpu = mkOption {
          type = firmware-type;
          default = "common";
        };
        gpu = mkOption {
          type = firmware-type;
          default = "common";
        };
      };
    };

}

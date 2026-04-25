{ lib, ... }:

{

  options =
    with lib;
    with types;

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

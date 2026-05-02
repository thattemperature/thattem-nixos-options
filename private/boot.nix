{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.private.boot = {
        type = mkOption {
          type = enum [
            "BIOS"
            "UEFI"
          ];
        };
      };
    };

}

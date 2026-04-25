{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.private.hostname = mkOption {
        type = str;
        default = "nixos";
      };
    };

}

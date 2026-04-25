{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.dae-configuration.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}

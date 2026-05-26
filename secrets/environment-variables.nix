{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.environment-variables.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}

{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.github-token.path = mkOption {
        type = nullOr str;
        default = null;
      };
    };

}

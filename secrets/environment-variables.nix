{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      thattem.secrets.environment-variables = mkOption {
        type = attrsOf (submodule {
          options = {
            path = mkOption { type = str; };
          };
        });
        default = { };
      };
    };

}

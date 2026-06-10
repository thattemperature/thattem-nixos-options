{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) attrsOf str submodule;
    in
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

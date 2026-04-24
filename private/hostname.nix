{ lib, ... }:

{

  options =
    with lib;
    with types;
    {
      private.hostname = mkOption {
        type = str;
        default = "nixos";
      };
    };

}

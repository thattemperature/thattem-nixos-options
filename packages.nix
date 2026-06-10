{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) nullOr package;
    in
    {
      thattem.packages = {
        python-lsp = mkOption {
          type = nullOr package;
          default = null;
        };
        stardicts = mkOption {
          type = nullOr package;
          default = null;
        };
        wallpapers = mkOption {
          type = nullOr package;
          default = null;
        };
      };
    };

}

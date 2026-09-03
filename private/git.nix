{ lib, ... }:

{

  options =
    let
      inherit (lib) mkOption;
      inherit (lib.types) str;
    in
    {
      thattem.private.git = {
        userName = mkOption {
          type = str;
          default = "";
        };
        userEmail = mkOption {
          type = str;
          default = "";
        };
        githubUser = mkOption {
          type = str;
          default = "";
        };
        botUserName = mkOption {
          type = str;
          default = "";
        };
        botUserEmail = mkOption {
          type = str;
          default = "";
        };
      };
    };

}

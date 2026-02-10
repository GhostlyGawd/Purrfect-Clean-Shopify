{ pkgs, ... }: {
  channel = "stable-23.11"; # or "unstable"
  packages = [
    pkgs.ruby
    pkgs.nodejs_20
    pkgs.shopify-cli 
  ];
  idx = {
    extensions = [
      "Shopify.theme-check-vscode" # AI helper for Liquid errors
    ];
    workspace = {
      onCreate = {
        # This prevents it from trying to install React/Next stuff
        default.openFiles = [ "Dawn/layout/theme.liquid" ];
      };
    };
  };
}
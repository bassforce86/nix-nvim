{
  # Import all your configuration modules here
  imports = [
    ./autocmd.nix
    ./globals.nix
    ./options.nix
    ./keymaps.nix

    # Theme
    ./theme

    # Plugins
    ./plugins
  ];
}

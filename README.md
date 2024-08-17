# nix-nvim

This is the recommended method if you are already using flakes to manage your
system. To enable flakes, add this to `/etc/nixos/configuration.nix`

```nix
{ pkgs, lib, ... }:
{
  nix = {
    settings.experimental-features = [ "nix-command" "flakes" ];
  };
}
```

Now, you need to import the module. If your system is already configured using
flakes, just add the nixvim input:

```nix
{
  # ...
  inputs.nixvim = {
    url = "github:bassforce86/nix-nvim";
    inputs.nixpkgs.follows = "nixpkgs";
  };
}
```
## Optional Home Manager import

```nix
{ inputs, system, ... }:
{
    # ...
    home.packages = [ inputs.nixvim.packages.%{system}.default ];
}
```

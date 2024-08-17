{ pkgs, ... }:
{
    extraPlugins = [ pkgs.vimPlugins.gruvbox-material ];
    colorscheme = "gruvbox-material";

    globals = {
      gruvbox_material_background = "hard";
      gruvbox_material_better_preformance = 1;
      gruvbox_material_ui_contrast = "high";
      gruvbox_material_inlay_hints_background = "dimmed";
      gruvbox_material_dim_inactive_windows = 1;
      gruvbox_material_diagnostic_virtual_text = "highlighted";
    };
}

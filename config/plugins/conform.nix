{
  # Autoformat
  # https://nix-community.github.io/nixvim/plugins/conform-nvim.html
  plugins.conform-nvim = {
    enable = true;
    notifyOnError = false;
    formattersByFt = {
      terraform = [ "terraform_fmt" ];
      tf = [ "terraform_fmt" ];
      hcl = [ "terragrunt_hclfmt" ];
    };
  };

  # https://nix-community.github.io/nixvim/keymaps/index.html
  keymaps = [
    {
      mode = "";
      key = "<leader>fmt";
      action.__raw = ''
        	  function()
        	    require('conform').format { async = true, lsp_fallback = true }
        	  end
        	'';
      options = {
        desc = "[F]or[m]a[t] buffer";
      };
    }
  ];
}

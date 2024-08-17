{ pkgs, ... }:

{
  # Highlight, edit, and navigate code
  # https://nix-community.github.io/nixvim/plugins/treesitter/index.html
  plugins = {
    treesitter = {
      enable = true;
      folding = true;

      gccPackage = null;
      nodejsPackage = null;
      treesitterPackage = null;


      grammarPackages = [
        pkgs.tree-sitter-grammars.tree-sitter-bash
        pkgs.tree-sitter-grammars.tree-sitter-css
        pkgs.tree-sitter-grammars.tree-sitter-go
        pkgs.tree-sitter-grammars.tree-sitter-gowork
        pkgs.tree-sitter-grammars.tree-sitter-gomod
        pkgs.tree-sitter-grammars.tree-sitter-hcl
        pkgs.tree-sitter-grammars.tree-sitter-http
        pkgs.tree-sitter-grammars.tree-sitter-html
        pkgs.tree-sitter-grammars.tree-sitter-java
        pkgs.tree-sitter-grammars.tree-sitter-javascript
        pkgs.tree-sitter-grammars.tree-sitter-json
        pkgs.tree-sitter-grammars.tree-sitter-markdown
        pkgs.tree-sitter-grammars.tree-sitter-make
        pkgs.tree-sitter-grammars.tree-sitter-nix
        pkgs.tree-sitter-grammars.tree-sitter-python
        pkgs.tree-sitter-grammars.tree-sitter-typescript
        pkgs.tree-sitter-grammars.tree-sitter-yaml
      ];

      settings = {
        indent.enable = true;
        highlight.enable = true;
        auto_install = false;
        ensure_installed = [ "terraform" "go" "python" "java" "nix" "typescript" "hcl" ];
      };
    };

    treesitter-refactor.enable = true;
    # Enable context row
    treesitter-context.enable = true;
    # Home Manager Tree Sitter snippets
    hmts.enable = true;
  };
}

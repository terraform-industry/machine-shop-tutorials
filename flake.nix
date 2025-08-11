{
  description = "MkDocs development environment for Machine Shop Tutorials Wiki-book";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
        
        python = pkgs.python311;
        
        mdx-truly-sane-lists = python.pkgs.buildPythonPackage rec {
          pname = "mdx-truly-sane-lists";
          version = "1.3";
          format = "setuptools";
          
          src = python.pkgs.fetchPypi {
            pname = "mdx_truly_sane_lists";
            inherit version;
            hash = "sha256-tmECLfdSCh4ROvfDVcYiFrOEyGfk9Z+47nrVEebnf0U=";
          };
          
          propagatedBuildInputs = with python.pkgs; [
            markdown
          ];
          
          pythonImportsCheck = [ "mdx_truly_sane_lists" ];
        };
        
        pythonWithPackages = python.withPackages (ps: with ps; [
          mkdocs
          mkdocs-material
          pygments
          pymdown-extensions
          mdx-truly-sane-lists
        ]);
        
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            pythonWithPackages
            nodePackages.markdownlint-cli2
            gnumake
          ];

          shellHook = ''
            echo "═══════════════════════════════════════════════════════════════"
            echo " Machine Shop Tutorials Wiki-Book Development Environment"
            echo "═══════════════════════════════════════════════════════════════"
            echo ""
            echo "Available commands:"
            echo "  make serve     # Start development server at localhost:8000"
            echo "  make build     # Build static site"
            echo "  make clean     # Clean build artifacts"
            echo "  make lint      # Check markdown files for issues"
            echo "  make lint-fix  # Auto-fix markdown issues"
            echo "  make deploy    # Deploy to GitHub Pages"
            echo ""
            echo "Quick start:"
            echo "  mkdocs serve   # Start the development server"
            echo ""
            echo "Documentation: https://github.com/JoNilsson/machine-shop-tutorials"
            echo "═══════════════════════════════════════════════════════════════"
            
            # Set up convenient aliases
            alias serve="mkdocs serve"
            alias build="mkdocs build"
            alias mdl="markdownlint-cli2 '**/*.md'"
            alias mdlfix="markdownlint-cli2 --fix '**/*.md'"
            
            # Set up git hooks directory if in git repo
            if [ -d .git ]; then
              git config core.hooksPath .githooks 2>/dev/null || true
              echo ""
              echo "Git hooks configured for auto-formatting on commit."
            fi
          '';
        };
      });
}
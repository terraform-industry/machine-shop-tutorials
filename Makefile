.PHONY: help install lint lint-fix serve build clean deploy redirects

# Default target
help:
	@echo "═══════════════════════════════════════════════════════════════"
	@echo " Machine Shop Tutorials Wiki-Book - Build Commands"
	@echo "═══════════════════════════════════════════════════════════════"
	@echo ""
	@echo "Development:"
	@echo "  make serve     - Start MkDocs development server (localhost:8000)"
	@echo "  make build     - Build static documentation site"
	@echo "  make clean     - Remove build artifacts"
	@echo ""
	@echo "Quality:"
	@echo "  make lint      - Check markdown files for linting issues"
	@echo "  make lint-fix  - Automatically fix markdown linting issues"
	@echo ""
	@echo "Deployment:"
	@echo "  make deploy    - Deploy to GitHub Pages"
	@echo "  make redirects - Generate redirect files for old URLs"
	@echo ""
	@echo "Setup:"
	@echo "  make install   - Install Python dependencies (non-Nix users)"
	@echo ""
	@echo "For Nix users: Run 'nix develop' first for the dev environment"
	@echo "═══════════════════════════════════════════════════════════════"

# Install dependencies for non-Nix users
install:
	@echo "Installing Python dependencies..."
	pip install -r requirements.txt
	@echo "✓ Dependencies installed"

# Markdown linting
lint:
	@echo "Checking markdown files for issues..."
	@markdownlint-cli2 "**/*.md" || true
	@echo "✓ Linting complete"

lint-fix:
	@echo "Auto-fixing markdown linting issues..."
	@markdownlint-cli2 --fix "**/*.md" || true
	@echo "✓ Markdown files fixed"

# Development server
serve:
	@echo "Starting MkDocs development server..."
	@echo "Visit http://localhost:8000 to view the documentation"
	@echo "Press Ctrl+C to stop the server"
	mkdocs serve --dev-addr 0.0.0.0:8000

# Build static site
build:
	@echo "Building static documentation site..."
	mkdocs build --strict
	@echo "✓ Site built in ./site directory"

# Clean build artifacts
clean:
	@echo "Cleaning build artifacts..."
	rm -rf site/
	find . -type d -name "__pycache__" -exec rm -rf {} + 2>/dev/null || true
	find . -type f -name "*.pyc" -delete 2>/dev/null || true
	@echo "✓ Build artifacts removed"

# Deploy to GitHub Pages
deploy: build
	@echo "Deploying to GitHub Pages..."
	mkdocs gh-deploy --force --clean --message "Deploy Machine Shop Tutorials Wiki-Book"
	@echo "✓ Deployed to https://jonilsson.github.io/machine-shop-tutorials/"

# Generate redirect files for old URLs
redirects:
	@echo "Generating redirect files for backward compatibility..."
	@if [ -f generate_redirects.py ]; then \
		python generate_redirects.py; \
		echo "✓ Redirect files generated"; \
	else \
		echo "⚠ generate_redirects.py not found"; \
		echo "  Please create the redirect generator script first"; \
	fi

# Watch for changes and auto-rebuild
watch:
	@echo "Watching for changes..."
	mkdocs serve --dev-addr 0.0.0.0:8000 --livereload

# Validate all links
check-links:
	@echo "Checking for broken links..."
	mkdocs build --strict 2>&1 | grep -E "WARNING.*not found" || echo "✓ No broken links found"

# Create a new section
new-section:
	@read -p "Enter section name (e.g., lathe_basics): " section; \
	mkdir -p docs/$$section; \
	echo "# $$(echo $$section | tr '_' ' ' | sed 's/\b\(.\)/\u\1/g')" > docs/$$section/index.md; \
	echo "✓ Created new section: docs/$$section/"

# Update from upstream template (if using one)
update-template:
	@echo "Checking for template updates..."
	@echo "This would fetch updates from a template repository"
	@echo "Not implemented yet"

# Full rebuild - clean, build, and test
rebuild: clean build
	@echo "✓ Full rebuild complete"

# Development setup check
check-env:
	@echo "Checking development environment..."
	@command -v mkdocs >/dev/null 2>&1 && echo "✓ mkdocs installed" || echo "✗ mkdocs not found"
	@command -v python >/dev/null 2>&1 && echo "✓ python installed" || echo "✗ python not found"
	@command -v markdownlint-cli2 >/dev/null 2>&1 && echo "✓ markdownlint-cli2 installed" || echo "✗ markdownlint-cli2 not found"
	@command -v git >/dev/null 2>&1 && echo "✓ git installed" || echo "✗ git not found"
	@test -f mkdocs.yml && echo "✓ mkdocs.yml found" || echo "✗ mkdocs.yml not found"
	@test -d docs && echo "✓ docs directory found" || echo "✗ docs directory not found"
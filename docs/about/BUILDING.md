# Building the Machine Shop Tutorials Wiki-Book

This guide explains how to build and deploy the documentation locally and to production.

## Quick Start

### Using Nix (Recommended)

If you have Nix installed, the development environment is fully reproducible:

```bash
# Enter the development shell
nix develop

# Start the development server
mkdocs serve

# Build the static site
mkdocs build
```

### Using Python/pip

Without Nix, install dependencies manually:

```bash
# Create virtual environment (recommended)
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate

# Install dependencies
pip install -r requirements.txt

# Start development server
mkdocs serve
```

## Available Commands

### Using Make

The Makefile provides convenient commands:

```bash
make help        # Show all available commands
make serve       # Start development server
make build       # Build static site
make clean       # Remove build artifacts
make lint        # Check markdown formatting
make lint-fix    # Auto-fix markdown issues
make deploy      # Deploy to GitHub Pages
```

### Direct MkDocs Commands

```bash
mkdocs serve                    # Start dev server on http://localhost:8000
mkdocs serve --dev-addr 0.0.0.0:8080  # Custom address/port
mkdocs build                    # Build static site in ./site
mkdocs build --strict           # Build with strict mode (fails on warnings)
mkdocs gh-deploy                # Deploy to GitHub Pages
```

## Project Structure

```
machine-shop-tutorials/
├── mkdocs.yml          # MkDocs configuration
├── flake.nix           # Nix development environment
├── requirements.txt    # Python dependencies
├── Makefile           # Build automation
├── docs/              # Source documentation
│   ├── index.md       # Homepage
│   ├── drill_press/   # Drill press section
│   ├── band_saw/      # Band saw section
│   └── ...            # Other sections
└── site/              # Generated site (git ignored)
```

## Configuration

### mkdocs.yml

Key configuration sections:

```yaml
site_name: Machine Shop Tutorials Wiki-Book
docs_dir: docs        # Source directory
site_dir: site        # Output directory
theme:
  name: material      # Material for MkDocs theme
plugins:
  - search           # Full-text search
  - tags             # Tag support
```

### Theme Customization

Custom CSS goes in `docs/stylesheets/extra.css`:

```css
/* Example: Custom warning color */
.md-typeset .admonition.warning {
  border-left-color: #ff6b6b;
}
```

Custom JavaScript in `docs/javascripts/extra.js`:

```javascript
// Example: Custom analytics event
document.addEventListener('DOMContentLoaded', function() {
  // Custom code here
});
```

## Development Workflow

### 1. Local Development

```bash
# Start dev server with live reload
mkdocs serve

# Changes to markdown files automatically reload
# Edit files in docs/
# View changes at http://localhost:8000
```

### 2. Testing Changes

Before committing:

```bash
# Build and check for errors
mkdocs build --strict

# Check markdown formatting
make lint

# Auto-fix formatting issues
make lint-fix

# Test all internal links
grep -r "](/" docs/ | grep -v http
```

### 3. Preview Production Build

```bash
# Build static site
mkdocs build

# Serve static site locally
cd site && python -m http.server 8000
```

## Deployment

### GitHub Pages (Automatic)

The repository is configured for automatic deployment:

```bash
# Deploy to GitHub Pages
make deploy
# OR
mkdocs gh-deploy --force
```

This deploys to: <https://jonilsson.github.io/machine-shop-tutorials/>

### GitHub Actions (CI/CD)

The repository includes GitHub Actions for automated deployment:

```yaml
# .github/workflows/deploy.yml
name: Deploy to GitHub Pages
on:
  push:
    branches: [main]
```

### Manual Deployment

For other hosting platforms:

```bash
# Build static site
mkdocs build

# Upload contents of ./site to your web server
rsync -avz site/ user@server:/var/www/html/
```

## Troubleshooting

### Common Issues

#### Port Already in Use

```bash
# Error: [Errno 48] Address already in use
# Solution: Use different port
mkdocs serve --dev-addr 127.0.0.1:8001
```

#### Missing Dependencies

```bash
# Error: No module named 'mkdocs_material'
# Solution: Install dependencies
pip install -r requirements.txt
```

#### Nix Development Shell Issues

```bash
# Error: nix develop fails
# Solution: Update flake
nix flake update
```

#### Build Warnings

```bash
# Warning: Documentation file 'x.md' contains no content
# Solution: Add content or remove empty file
```

### Debug Mode

Run with verbose output for debugging:

```bash
mkdocs serve --verbose
mkdocs build --verbose --strict
```

## Performance Optimization

### Image Optimization

Before adding images:

```bash
# Resize large images
convert input.jpg -resize 1200x1200\> output.jpg

# Optimize PNG files
optipng -o2 image.png

# Optimize JPEG files
jpegoptim --max=85 image.jpg
```

### Site Performance

```bash
# Minify output
pip install mkdocs-minify-plugin

# Add to mkdocs.yml:
plugins:
  - minify:
      minify_html: true
```

## Environment Variables

### Custom Configuration

```bash
# Set custom site URL
export SITE_URL=https://custom-domain.com
mkdocs build

# Enable analytics (if configured)
export GOOGLE_ANALYTICS_KEY=UA-XXXXXXXX
mkdocs build
```

## Advanced Features

### PDF Generation

Install additional dependencies:

```bash
pip install mkdocs-pdf-export-plugin
```

Add to mkdocs.yml:

```yaml
plugins:
  - pdf-export:
      enabled_if_env: ENABLE_PDF_EXPORT
```

Build with PDF:

```bash
ENABLE_PDF_EXPORT=1 mkdocs build
```

### Offline Documentation

Generate offline-compatible version:

```bash
# Build with absolute URLs
mkdocs build --site-url file:///path/to/site/

# Create ZIP for distribution
cd site && zip -r ../machine-shop-tutorials-offline.zip .
```

## Contributing to Build Process

To improve the build system:

1. Test changes thoroughly
2. Document new features
3. Update this guide
4. Submit PR with clear description

## Support

For build-related issues:

- Check [GitHub Issues](https://github.com/JoNilsson/machine-shop-tutorials/issues)
- Review [MkDocs Documentation](https://www.mkdocs.org/)
- Contact: <johanness.nilsson@terraformindustries.com>

---

*Building knowledge, one commit at a time.*

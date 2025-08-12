# Machine Shop Tutorials Wiki

[![Deploy MkDocs][deploy-badge]][deploy-url]
[![Markdown Lint][lint-badge]][lint-url]

A comprehensive wiki-book for machinists, fabricators, and makers.

## 📚 Visit the Wiki

**[View the Machine Shop Tutorials Wiki →](https://jonilsson.github.io/machine-shop-tutorials/)**

## 🔧 About This Repository

This repository contains the source for the Machine Shop Tutorials Wiki,
a comprehensive guide covering:

- **Drill Press Mastery** - From basics to advanced techniques
- **Band Saw Operations** - Horizontal and vertical saw expertise
- **Precision Layout** - Bolt circles and coordinate calculations
- **Fundamental Skills** - Essential machining foundations
- **Measurement & QC** - Precision measuring and quality control
- **Shop Efficiency** - Time-saving techniques and custom tooling

## 🚀 Quick Start (For Contributors)

### Using Nix (Recommended)

```bash
nix develop
make serve
```

### Manual Setup

```bash
pip install -r requirements.txt
mkdocs serve
```

Visit <http://localhost:8000> to view the documentation locally.

## 📁 Repository Structure

```text
.
├── docs/           # MkDocs source files (the wiki content)
├── site/           # Built static site (git-ignored)
├── mkdocs.yml      # MkDocs configuration
├── flake.nix       # Nix development environment
├── Makefile        # Build automation
└── [legacy dirs]/  # Original tutorials (now contain redirects)
```

## 🔄 Legacy Content

The original tutorial directories now contain redirect notices pointing
to the new wiki. This preserves existing links while guiding users to
the improved content.

## 📄 License

- **Content**: Creative Commons BY-SA 4.0
- **Code**: MIT License

See [LICENSE.md](LICENSE.md) for details.

## 👤 Author

**Johanness A. Nilsson**  
[johanness.nilsson@terraformindustries.com](mailto:johanness.nilsson@terraformindustries.com)

---

*Building the future, one chip at a time.*

<!-- Badge Links -->
[deploy-badge]: https://github.com/JoNilsson/machine-shop-tutorials/actions/workflows/deploy.yml/badge.svg
[deploy-url]: https://github.com/JoNilsson/machine-shop-tutorials/actions/workflows/deploy.yml
[lint-badge]: https://github.com/JoNilsson/machine-shop-tutorials/actions/workflows/ci.yml/badge.svg
[lint-url]: https://github.com/JoNilsson/machine-shop-tutorials/actions/workflows/ci.yml

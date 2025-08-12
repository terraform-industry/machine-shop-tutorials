# Contributing to Machine Shop Tutorials

First off, thank you for considering contributing to Machine Shop Tutorials!
It's people like you that make this resource valuable for machinists worldwide.

## Table of Contents

- [Code of Conduct](#code-of-conduct)
- [Getting Started](#getting-started)
- [How Can I Contribute?](#how-can-i-contribute)
- [Style Guidelines](#style-guidelines)
- [Commit Messages](#commit-messages)
- [Pull Request Process](#pull-request-process)

## Code of Conduct

This project and everyone participating in it is governed by our Code of Conduct.
By participating, you are expected to uphold this code. Please report unacceptable
behavior to the project maintainers.

## Getting Started

1. Fork the repository
2. Clone your fork locally
3. Set up the development environment
4. Create a new branch for your contribution
5. Make your changes
6. Test your changes locally
7. Submit a pull request

### Development Setup

#### Using Nix (Recommended)

```bash
nix develop
make serve
```

#### Manual Setup

```bash
pip install -r requirements.txt
mkdocs serve
```

## How Can I Contribute?

### Reporting Bugs

Before creating bug reports, please check existing issues. When creating a bug
report, please include:

- A clear and descriptive title
- Steps to reproduce the issue
- Expected behavior
- Actual behavior
- Screenshots if applicable
- Your environment details

### Suggesting Enhancements

Enhancement suggestions are tracked as GitHub issues. When creating an
enhancement suggestion, provide:

- A clear and descriptive title
- A detailed description of the proposed enhancement
- Examples of how it would be used
- Why this enhancement would be useful

### Contributing Content

We welcome new tutorials and improvements to existing content! When contributing:

1. **Accuracy**: Ensure all technical information is accurate and safe
2. **Clarity**: Write for your audience (beginners to advanced machinists)
3. **Completeness**: Include all necessary safety warnings and prerequisites
4. **Images**: Use clear, high-quality images where helpful
5. **Examples**: Provide real-world examples and applications

## Style Guidelines

### Markdown Style

- Use ATX-style headers (`#` not underlines)
- Limit lines to 80 characters where possible
- Use fenced code blocks with language specification
- Follow the existing structure and formatting

### Writing Style

- Use clear, concise language
- Define technical terms on first use
- Include metric and imperial measurements
- Always prioritize safety information
- Use active voice when possible

### File Organization

```text
docs/
├── section_name/
│   ├── index.md          # Section overview
│   ├── topic1.md          # Individual topics
│   └── topic2.md
└── images/
    └── section_name/      # Related images
```

## Commit Messages

- Use the present tense ("Add feature" not "Added feature")
- Use the imperative mood ("Move cursor to..." not "Moves cursor to...")
- Limit the first line to 72 characters
- Reference issues and pull requests liberally after the first line

### Commit Types

- `feat:` New feature
- `fix:` Bug fix
- `docs:` Documentation changes
- `style:` Formatting changes
- `refactor:` Code restructuring
- `test:` Adding tests
- `chore:` Maintenance tasks

## Pull Request Process

1. **Update Documentation**: Ensure any new features are documented
2. **Pass All Tests**: Run `make lint` to ensure no linting errors
3. **Update Navigation**: Add new pages to `mkdocs.yml` if needed
4. **Test Locally**: Run `make serve` and verify your changes
5. **Update README**: If you've added new sections or features
6. **Request Review**: Tag appropriate reviewers

### PR Checklist

- [ ] My markdown follows the project style guidelines
- [ ] I have performed a self-review
- [ ] I have checked for spelling and grammar
- [ ] My changes generate no new warnings
- [ ] I have tested the documentation locally
- [ ] All links work correctly
- [ ] Images are optimized and display correctly

## Development Commands

```bash
# Start development server
make serve

# Run linter
make lint

# Auto-fix linting issues
make lint-fix

# Build static site
make build

# Clean build artifacts
make clean
```

## Questions?

Feel free to open an issue for any questions about contributing. We're here
to help make your contribution process smooth and enjoyable!

## Recognition

Contributors will be recognized in our AUTHORS.md file and in release notes.
Your expertise helps make this resource better for everyone in the machining
community.

Thank you for contributing to Machine Shop Tutorials!

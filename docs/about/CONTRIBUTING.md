# Contributing to Machine Shop Tutorials Wiki-Book

We welcome contributions from machinists, engineers, hackers, and anyone with
knowledge to share! This guide will help you contribute effectively.

## Ways to Contribute

### 1. Quick Fixes (Easiest)

For typos, clarity improvements, or small corrections:

1. Click the "Edit on GitHub" icon on any page
2. Make your changes directly in GitHub's editor
3. Submit a pull request with a brief description

### 2. Content Additions

For adding new sections or substantial content:

1. Fork the repository
2. Create a feature branch: `git checkout -b add-threading-guide`
3. Write your content in Markdown
4. Test locally with `mkdocs serve`
5. Submit a pull request

### 3. Images and Diagrams

Visual content is incredibly valuable:

- Place images in `docs/images/`
- Use descriptive filenames: `drill-point-angles-comparison.jpg`
- Include alt text for accessibility
- Optimize images (< 1MB preferred)
- Add captions explaining what the image shows

### 4. Report Issues

Found something wrong but not sure how to fix it?

- [Open an issue](https://github.com/JoNilsson/machine-shop-tutorials/issues)
- Describe the problem clearly
- Include the page URL
- Suggest a fix if you have one

## Content Guidelines

### Writing Style

- **Be conversational** - Write like you're teaching a friend
- **Be practical** - Include real-world examples
- **Be specific** - "Set speed to 700 RPM" not "use appropriate speed"
- **Be safe** - Always include safety warnings where relevant

### Technical Accuracy

- Verify measurements and specifications
- Test procedures before documenting them
- Cite sources for controversial techniques
- Include material specifications (alloy numbers, grades, etc.)

### Formatting Standards

- Keep lines under 80 characters when practical
- Use headers hierarchically (h1 > h2 > h3)
- Include tables for reference data
- Use lists for step-by-step procedures

Example:

```markdown
## Drilling Stainless Steel

Stainless work-hardens rapidly, requiring specific techniques:

### Speed Settings

| Material | Drill Size | RPM |
| -------- | ---------- | --- |
| 304 SS   | 1/4"       | 500 |
| 316 SS   | 1/4"       | 400 |

### Procedure

1. Use cobalt or carbide drill
2. Apply cutting fluid liberally
3. Maintain constant feed pressure
4. Never let the drill dwell

⚠️ **Safety**: Stainless chips are extremely sharp and hot
```markdown

## Development Setup

### Using Nix (Recommended)

```bash
# Enter development environment
nix develop

# Start development server
mkdocs serve
```

### Manual Setup

```bash
# Install dependencies
pip install -r requirements.txt

# Start development server
mkdocs serve
```

### Testing Your Changes

Before submitting:

1. Run `mkdocs build --strict` to check for errors
2. Check all links work
3. Verify images display correctly
4. Test on mobile viewport
5. Run markdown linter: `make lint` to show error & `make lint-fix` to
   apply automated corrections

## Commit Message Format

Use clear, descriptive commit messages:

```text
Add drilling speed chart for exotic materials

- Added comprehensive speed/feed table
- Included titanium, inconel, and hastelloy
- Added safety warnings for each material
```

## Pull Request Process

1. **Title**: Clear description of changes
2. **Description**: Explain what and why
3. **Testing**: Confirm you tested locally
4. **Screenshots**: Include for visual changes

Example PR description:

```text
## Summary
Added comprehensive guide for boring head operations

## Changes
- New section on boring head types and selection
- Step-by-step setup procedure with images
- Troubleshooting guide for common issues
- Speed/feed recommendations table

## Testing
- [x] Tested with `mkdocs serve`
- [x] All images load correctly
- [x] Links verified
- [x] Mobile responsive

## Screenshots
[Include relevant screenshots]
```

## Code of Conduct

- Be respectful and constructive
- Welcome newcomers
- Share knowledge freely
- Proper attribution and accreditation
- Keep the focus on education

## Licensing

By contributing, you agree that your contributions will be licensed
under CC BY-SA 4.0. This ensures the knowledge remains free and open.

## Getting Help

Need assistance?

- Open a [discussion](https://github.com/JoNilsson/machine-shop-tutorials/discussions)
- Ask in an [issue](https://github.com/JoNilsson/machine-shop-tutorials/issues)
- Email: <johanness.nilsson@terraformindustries.com>

## Recognition

All contributors are recognized in our git history. Significant contributors
may be added to the AUTHORS.md file.

## Areas Needing Contributions

Current priorities:

- [✓] [~~Lathe operations guide~~]
  (<https://jonilsson.github.io/lathe-mastery-wikibook/>)
- [ ] Surface grinding techniques
- [ ] CNC basics for manual machinists
- [ ] Metrology and inspection
- [ ] Heat treatment basics
- [ ] Shop safety procedures
- [ ] Tool grinding and sharpening
- [ ] Material identification guide

## Tips for New Contributors

1. Start small - fix a typo or clarify a sentence
2. Read existing content to understand the style
3. Don't be afraid to ask questions
4. Your experience is valuable - share it!
5. Perfect is the enemy of good - submit and iterate

---

_Remember: Every expert was once a beginner. Your contributions, no
matter how small, help others learn and grow._

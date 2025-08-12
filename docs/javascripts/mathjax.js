// MathJax configuration for Machine Shop Tutorials
window.MathJax = {
  tex: {
    inlineMath: [["\\(", "\\)"]],
    displayMath: [["\\[", "\\]"]],
    processEscapes: true,
    processEnvironments: true
  },
  options: {
    ignoreHtmlClass: ".*|",
    processHtmlClass: "arithmatex"
  }
};

// Custom functionality for Machine Shop Tutorials
document$.subscribe(() => {
  // Add copy functionality to code blocks with formulas
  const formulaBlocks = document.querySelectorAll('.language-formula');
  formulaBlocks.forEach(block => {
    const button = document.createElement('button');
    button.className = 'md-clipboard md-icon';
    button.title = 'Copy formula';
    button.innerHTML = '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24"><path d="M19,21H8V7H19M19,5H8A2,2 0 0,0 6,7V21A2,2 0 0,0 8,23H19A2,2 0 0,0 21,21V7A2,2 0 0,0 19,5M16,1H4A2,2 0 0,0 2,3V17H4V3H16V1Z"></path></svg>';
    
    button.addEventListener('click', () => {
      const text = block.textContent;
      navigator.clipboard.writeText(text).then(() => {
        button.classList.add('copied');
        setTimeout(() => button.classList.remove('copied'), 2000);
      });
    });
    
    block.parentElement.insertBefore(button, block);
  });

  // Add unit converter tooltip (for metric/imperial)
  const measurements = document.querySelectorAll('.measurement');
  measurements.forEach(elem => {
    const value = parseFloat(elem.dataset.value);
    const unit = elem.dataset.unit;
    
    if (unit === 'mm') {
      const inches = (value / 25.4).toFixed(3);
      elem.title = `${inches}"`;
    } else if (unit === 'inch') {
      const mm = (value * 25.4).toFixed(1);
      elem.title = `${mm}mm`;
    }
  });
});
---
stylesheet: /Konsolas/Konsolas.css
colorSchemeName: Konsolas
colorSchemeFileName: Konsolas
image: /Konsolas/Konsolas.png
description: Konsolas color scheme
permalink: /
---

<main class="color-scheme-page">
  <header>
    <h1 id="colorSchemeTitle">
      <a id="colorSchemeNameLink" href="#">
        <span class="ColorSchemeFileName"></span>
      </a>
    </h1>
  </header>

  <section class="palette-selector">
    {% include PaletteSelector.html %}
  </section>

  <section class="color-preview">
    {% include 4bitpreview.svg %}
  </section>

  <section class="action-buttons">
    <a id="downloadSchemeLink" class="action-button" aria-label="Download Scheme">
      {% include download-icon.svg %}
    </a>
    <a id="cdnSchemeLink" class="action-button" aria-label="CDN Scheme Link">
      {% include download-cloud-icon.svg %}
    </a>
    <a id="feelingLucky" href="javascript:feelingLucky(document.getElementById('themeSelector'))" class="action-button" aria-label="Feeling Lucky">
      {% include shuffle-icon.svg %}
    </a>
  </section>
</main>

<style>
  .color-scheme-page {
    max-width: 1200px;
    margin: 0 auto;
    padding: 2rem;
  }

  header {
    text-align: center;
    margin-bottom: 2rem;
  }

  #colorSchemeTitle {
    font-size: 2rem;
    margin-bottom: 1rem;
  }

  .palette-selector,
  .color-preview,
  .action-buttons,
  .color-table,
  .how-to {
    margin-bottom: 2rem;
  }

  .action-buttons {
    display: flex;
    justify-content: center;
    gap: 1rem;
  }

  .action-button {
    display: inline-flex;
    align-items: center;
    justify-content: center;
    padding: 0.5rem;
    border-radius: 4px;
    background-color: #f0f0f0;
    transition: background-color 0.3s ease;
  }

  .action-button:hover {
    background-color: #e0e0e0;
  }

  .action-button svg {
    width: 24px;
    height: 24px;
  }
</style>

<script>
  document.addEventListener('DOMContentLoaded', function() {
    const colorSchemeFileName = document.querySelector('.ColorSchemeFileName');
    const colorSchemeNameLink = document.getElementById('colorSchemeNameLink');
    const downloadSchemeLink = document.getElementById('downloadSchemeLink');
    const cdnSchemeLink = document.getElementById('cdnSchemeLink');

    if (colorSchemeFileName) {
      colorSchemeFileName.textContent = '{{ page.colorSchemeFileName }}';
    }

    if (colorSchemeNameLink) {
      colorSchemeNameLink.href = '{{ page.stylesheet }}';
    }

    if (downloadSchemeLink) {
      downloadSchemeLink.href = '{{ page.stylesheet }}';
      downloadSchemeLink.download = '{{ page.colorSchemeFileName }}.css';
    }

    if (cdnSchemeLink) {
      cdnSchemeLink.href = 'https://cdn.jsdelivr.net/gh/4bit/4bit.github.io{{ page.stylesheet }}';
    }
  });
</script>
---
stylesheet: /Konsolas/Konsolas.css
colorSchemeName: Konsolas
colorSchemeFileName: Konsolas
image: /Konsolas/Konsolas.png
description: Konsolas color scheme
permalink: /docs/
---

<style>
    body {
        font-family: Arial, sans-serif;
        line-height: 1.6;
        color: var(--ansi7, #333);
        background-color: var(--ansi15, #f9f9f9);
        margin: 0;
        padding: 20px;
    }
    .container {
        max-width: 1200px;
        margin: 0 auto;
    }
    header {
        text-align: center;
        margin-bottom: 40px;
    }
    h1 {
        color: var(--ansi4, #0000ff);
    }
    .meta-info {
        background-color: var(--ansi0, #f4f4f4);
        border: 1px solid var(--ansi8, #ddd);
        border-radius: 8px;
        padding: 20px;
        margin-bottom: 40px;
    }
    .demo-row {
        display: flex;
        flex-wrap: wrap;
        justify-content: space-between;
        margin-bottom: 40px;
    }
    .demo-column {
        flex: 0 0 48%;
        margin-bottom: 20px;
    }
    @media (max-width: 768px) {
        .demo-column {
            flex: 0 0 100%;
        }
    }
    h2 {
        color: var(--ansi5, #800080);
    }
    .code-block {
        background-color: var(--ansi0, #f4f4f4);
        border: 1px solid var(--ansi8, #ddd);
        border-radius: 8px;
        padding: 15px;
        overflow-x: auto;
        margin-bottom: 20px;
    }
    .code-block pre {
        margin: 0;
        white-space: pre-wrap;
        word-wrap: break-word;
    }
    .code-block code {
        font-family: monospace;
        font-size: 14px;
    }
    .demo-output {
        border: 2px solid var(--ansi8, #ddd);
        border-radius: 8px;
        padding: 20px;
        margin-bottom: 20px;
    }
    .icon-list {
        display: flex;
        justify-content: center;
        align-items: center;
        list-style-type: none;
        padding: 0;
        margin: 0;
    }
    .icon-list li {
        margin: 0 10px;
    }
    .icon-list svg {
        width: 24px;
        height: 24px;
        vertical-align: middle;
    }
</style>
<div class="container">
    <header>
        <h1>Konsolas Color Scheme Documentation</h1>
        <img src="/Konsolas/Konsolas.png" alt="Konsolas Color Scheme" style="max-width: 100%; height: auto;">
    </header>
    <section class="meta-info">
        <h2>Color Scheme Information</h2>
        <p><strong>Stylesheet:</strong> /Konsolas/Konsolas.css</p>
        <p><strong>Color Scheme Name:</strong> Konsolas</p>
        <p><strong>Color Scheme File Name:</strong> Konsolas</p>
        <p><strong>Description:</strong> Konsolas color scheme</p>
        <p><strong>Permalink:</strong> /docs/</p>
    </section>
    <div class="demo-row">
        <div class="demo-column">
            <h2>Text Styling Example</h2>
            <div class="code-block">
                <pre><code class="language-html">
&lt;p class="ansi4"&gt;This is a blue text.&lt;/p&gt;
&lt;p class="ansi2 ansi15-background"&gt;Green text on white background.&lt;/p&gt;
&lt;p&gt;Normal text with &lt;span class="ansi9"&gt;bright red&lt;/span&gt; highlight.&lt;/p&gt;
                    </code></pre>
                </div>
                <div class="demo-output">
                    <p class="ansi4">This is a blue text.</p>
                    <p class="ansi2 ansi15-background">Green text on white background.</p>
                    <p>Normal text with <span class="ansi9">bright red</span> highlight.</p>
                </div>
                <p>The ANSI color classes provide a flexible way to style text. Use classes like 'ansi4' for foreground colors and 'ansi15-background' for background colors. Combine them to create visually appealing text styles that match your theme.</p>
            </div>
            <div class="demo-column">
                <h2>Icon Styling</h2>
                <div class="code-block">
                    <pre><code class="language-html">
&lt;ul class="icon-list"&gt;
    &lt;li&gt;&lt;svg class="ansi3"&gt;...&lt;/svg&gt;&lt;/li&gt;
    &lt;li&gt;&lt;svg class="ansi5"&gt;...&lt;/svg&gt;&lt;/li&gt;
    &lt;li&gt;&lt;svg class="ansi6"&gt;...&lt;/svg&gt;&lt;/li&gt;
&lt;/ul&gt;
                    </code></pre>
                </div>
                <div class="demo-output">
                    <ul class="icon-list">
                        <li><svg class="ansi3" viewBox="0 0 24 24"><path fill="currentColor" d="M12 2L1 21h22L12 2zm0 3.83L19.13 19H4.87L12 5.83zM11 10v4h2v-4h-2zm0 6v2h2v-2h-2z"/></svg></li>
                        <li><svg class="ansi5" viewBox="0 0 24 24"><path fill="currentColor" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm-1-13h2v6h-2zm0 8h2v2h-2z"/></svg></li>
                        <li><svg class="ansi6" viewBox="0 0 24 24"><path fill="currentColor" d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm0 18c-4.41 0-8-3.59-8-8s3.59-8 8-8 8 3.59 8 8-3.59 8-8 8zm4.59-12.42L10 14.17l-2.59-2.58L6 13l4 4 8-8z"/></svg></li>
                    </ul>
                </div>
                <p>ANSI color classes can be applied to SVG icons to create a cohesive color scheme across your interface. By using classes like 'ansi3', 'ansi5', and 'ansi6', you can easily match icon colors to your text and background styles, ensuring a consistent and visually appealing design.</p>
            </div>
        </div>
    </div>

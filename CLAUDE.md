# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Quarto book project — *Javascript på klientsidan* — a Swedish-language textbook on client-side JavaScript. It is intended as course literature for the courses Webbteknik 2 and 3 at Linnéuniversitetet, targeting students without a prior technical background. The book should read like a traditional textbook: continuous prose interspersed with examples and exercises, with a certain theoretical depth while remaining primarily practical. Avoid the "copy-paste trap" in exercises.

## Commands

All commands must be run from the `manuscript/` directory:

```bash
cd manuscript

# Build HTML and PDF output
quarto render

# Live preview with hot reload (opens browser)
quarto preview
```

Build output lands in `manuscript/_book/`.

## Structure

- `manuscript/_quarto.yml` — book configuration (title, author, chapter list, output formats)
- `manuscript/*.qmd` — chapter files in Quarto Markdown
- `manuscript/references.bib` — BibTeX bibliography
- `manuscript/_book/` — generated output (gitignored)

Chapters must be listed explicitly under `book.chapters` in `_quarto.yml`. The output formats are HTML (cosmo theme) and PDF (scrreprt document class).

## Content Plan

See [OUTLINE.md](OUTLINE.md) for the full chapter plan. The book is organized into four parts:

- **Del I** (Ch. 1–12): Foundational JavaScript — values and variables, the DOM, functions, events, numbers, strings, booleans, conditional statements, loops, arrays, objects. Web chapters (3 and 5) come early so later language chapters can use interactive examples; language features are introduced only in language chapters (see the restructure section in OUTLINE.md)
- **Del II**: The web as a platform — DOM deep-dive, timers, forms, storage, Fetch/JSON, HTTP/REST, audio, drag-and-drop, security, performance
- **Del III**: The language in depth — closures, async/await, modules, OOP, functional array transforms, error handling
- **Del IV**: Craft and methodology — Git/GitHub, debugging

Plus two appendices on HTML and CSS reference.

## Writing Conventions

- Language: Swedish throughout
- Audience: University students, no prior technical background assumed
- Style: Traditional textbook — flowing prose with integrated examples that introduce, explain, and deepen concepts
- Code style: end every JavaScript statement with a semicolon, including lines that consist only of an expression (`42;`, `typeof x;`, `` `Hej ${namn}`; ``). Exceptions: lines that open or continue a block, object literal or array (`{`, `,`), and plain-text blocks listing values for students to classify.
- Exercises must avoid the "copy-paste trap"; students should reason and apply, not just transcribe
- Perfer to start each chapter with some concrete scenario or problem that the students caan recognize, then introduce concepts as tools to solve it.
- Each chapter should include one `{.callout-tip}` box with ideas on how to use AI tools to practice the related topic in a meaningfull way. It can be placed in the end, right adter the **summary section** if it covers the entire chapter. It if only covers a section, the box should be placed in the end of that section. The box must be specific to the chapter's content — generic framing belongs in the introduction chapter only.
  - Give suggestions of prompts that students can use to deepen their understanding of the chapter's content.
  - Or give suggestions of how students can use AI tools to practice the chapter's content in a meaningfull way. it could be generating flash cards, example problems to solve etc.
- Update the chapter list in `_quarto.yml` as you add new chapters, and ensure they are in the correct order for the intended progression.
- Reference authorative online documentation (e.g., MDN Web Docs) where appropriate.
- Add references to `references.bib` as needed, and cite them in the text using standard Quarto Markdown citation syntax.
- Update [OUTLINE.md](OUTLINE.md) as needed to reflect changes in the chapter plan or structure.

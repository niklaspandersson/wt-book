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
- `manuscript/kapNN-*.qmd` (Del I) and `manuscript/kap-*.qmd` (Del II–III) — chapter files in Quarto Markdown
- `manuscript/losnNN-*.qmd` — solutions to the exercises in Del I, with the introduction `losningar.qmd`
- `manuscript/filters/number-exercises.lua` — numbers the exercises and solutions
- `manuscript/references.bib` — BibTeX bibliography
- `manuscript/_book/` — generated output (gitignored)

Chapters must be listed explicitly under `book.chapters` in `_quarto.yml`. The output formats are HTML (cosmo theme) and PDF (scrreprt document class).

Project documents in the repository root:

- [OUTLINE.md](OUTLINE.md) — chapter plan, draft course plans, and the background and status of the current iteration
- [PEDAGOGIK.md](PEDAGOGIK.md) — research summary that the book's pedagogy builds on
- [ATT-GORA.md](ATT-GORA.md) — open items, and material waiting for a chapter that is not yet written
- [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md) — references between chapters that no longer hold

Keep these documents current: strike items when they are done, and do not keep logs of finished work. Git history records what changed.

## Content Plan

See [OUTLINE.md](OUTLINE.md) for the full chapter plan. The book is organized into four parts:

- **Del I** (Ch. 1–16): Foundational JavaScript — values and variables, using functions (calls, arguments, return values, methods), the DOM, writing your own functions, events, booleans, conditional statements, loops, arrays (including arrays of objects), with mini chapters on numbers and text in between (ch. 3, 5, 8, 11, 13 and 15). Del I is sized to fit the course Webbteknik 2: teach the basics well and show students where to look up the rest, rather than covering every method. Web chapters (6 and 9) come early so later language chapters can use interactive examples. Language features are introduced only in language chapters, and web chapters only use what has already been explained. Del I is being restructured (see *Nästa iteration* in OUTLINE.md): a new chapter on events and many elements is planned after the arrays chapter.
- **Del II**: The web as a platform — DOM traversal, creating elements, events in depth, drag and drop, media, time and animations; planned: forms, storage, Fetch/JSON, HTTP/REST, security, performance
- **Del III**: The language in depth — objects, modules, OOP, destructuring, inheritance; planned: closures, async/await, functional array transforms, error handling
- **Del IV**: Craft and methodology — Git/GitHub, debugging

Plus two appendices on HTML and CSS reference.

## Target Audience (always applies)

Every decision about the book's content, structure, order, examples and exercises must start from who the readers are:

- **Complete beginners in programming, but not on the web.** They have taken a basic course in HTML and CSS, so they know how to write, save and open web pages. Do not explain that. Assume no prior experience of programming, the command line, file systems beyond everyday use, or technical vocabulary. Every term is explained the first time it is used.
- **Many have no science background and limited mathematics.** Do not rely on mathematical notation, formulas or mathematical intuition (e.g. functions in the mathematical sense, algebra, modulo arithmetic, percentages beyond everyday use). When a calculation is needed, choose everyday contexts (prices, scores, time) and explain it in words. Avoid examples whose difficulty lies in the maths rather than in the programming concept.
- **One new idea at a time.** Prefer fewer concepts explained thoroughly over complete coverage. If a section introduces something that is not needed until later, move it to where it is needed.
- **Follow the research.** Design explanations and exercises according to the research summary in [PEDAGOGIK.md](PEDAGOGIK.md) (e.g. reading and tracing code before writing it, worked examples, Parsons problems, explicit notional machine, attention to known misconceptions). 

When in doubt, ask: *Would a first-year student from a humanities or social science programme follow this without help?* Then ask the opposite question about every sentence: *Would the student miss it if it were deleted?* Both questions apply. The first one alone leads to over-explaining (see *Prose density* below).

## Writing Conventions

- Language: Swedish throughout
- Audience: University students, no prior technical background assumed
- Style: Traditional textbook — flowing prose with integrated examples that introduce, explain, and deepen concepts
- Code style: end every JavaScript statement with a semicolon, including lines that consist only of an expression (`42;`, `typeof x;`, `` `Hej ${namn}`; ``). Exceptions: lines that open or continue a block, object literal or array (`{`, `,`), and plain-text blocks listing values for students to classify. Always use braces with `if` and loops.
- **Headings follow the language and the API, not the examples.** Sections and subsections are named and organised after what they teach: a language construct, an operator, a method or a property (`for`-loopen, `classList`, `Number()`). Examples, from a one-line illustration to a longer walkthrough, go under or after the section they belong to and are not the basis of the structure. A heading like *En räknare* or *Mörkt läge med en knapp* says what is built, not what is learned. Worked examples (*Ett löst exempel: …*) may have their own heading, but placed after the sections they apply. The motivating example in the chapter opening is the exception.
- Exercises must avoid the "copy-paste trap"; students should reason and apply, not just transcribe
- **Chapter openings.** Every chapter opens with two things, in whichever order reads best:
  - a **motivating example** that shows why the chapter's subject matters. It can be a problem to solve, but also a familiar situation or a short demonstration of what the student will be able to do.
  - a **clear definition** of the main concept the chapter covers, where there is one, in a sentence or two. Define the concept, not the chapter's contents.

  The motivation leads straight into the concept and is not a story of its own. Together they take a paragraph or two (about 150 words) before the first code.
- Each chapter should include one `{.callout-tip}` box with ideas on how to use AI tools to practise the chapter's topic in a meaningful way. Place it right after the **summary section** if it covers the entire chapter, or at the end of a section if it only covers that section. The box must be specific to the chapter's content — generic framing belongs in the introduction chapter only.
  - Give suggestions of prompts that students can use to deepen their understanding of the chapter's content.
  - Or give suggestions of how students can use AI tools to practise, for example by generating flash cards or example problems. The AI should quiz, explain, give hints and create practice material, never solve the exercises (PEDAGOGIK.md §10).
- Update the chapter list in `_quarto.yml` as you add new chapters, and ensure they are in the correct order for the intended progression.
- Reference authoritative online documentation (e.g., MDN Web Docs, `/en-US/` pages) where appropriate.
- Add references to `references.bib` as needed, and cite them in the text using standard Quarto Markdown citation syntax.
- Update [OUTLINE.md](OUTLINE.md) as needed to reflect changes in the chapter plan or structure.

## Chapter conventions (Del I)

The ordinary chapters of Del I follow a common template, based on PEDAGOGIK.md:

- **Scripts in Del I.** Code is written in a `<script>` element at the end of `<body>`, never in a separate file and never as a module (`type="module"`). Pages are opened directly from the file system; no web server or Live Server is needed. Do not explain how to create, save, open or reload pages (see *Target Audience*). Separate script files and modules are introduced in the modules chapter.
- **Practice page.** From chapter 6 on, each ordinary chapter has its own practice page (a folder `kapNN` with an `index.html`, usually in a section *En sida att öva på*) containing every element the examples and exercises need. From chapter 7 on, a callout *Så provar du koden i det här kapitlet* says how to work with it.
- ***Stanna upp* boxes** (`{.callout-note appearance="simple"}` with the heading `## Stanna upp`) after the heavier sections: a few short questions that check understanding, often asking the student to predict before testing.
- **Notional machine.** Use the arrow model from chapter 2 (names point to values) and trace tables (one column per variable, one row per step) wherever beginners have known misconceptions.
- **A worked example** with named steps, usually headed *Ett löst exempel: …*. Interactive examples use the five-step pattern from chapter 9: *hämta → lyssna → läs → bearbeta → visa*, marked with comments (`// 1. Hämta`).
- **"Minns du?" questions are optional and narrow.** Use them only for something the chapter builds on right away, at most two or three, and only about that. They must not turn into a review of earlier chapters or delay the chapter's own subject.
- **Beyond the basics.** Put what Del I does not need in a short *Bra att veta* box with a link to MDN, or move it to the chapter where it is needed.
- **Exercises** come after the summary and the AI box, under `## Övningar`. Each is a `{.callout-note}` with the heading `## Övning – Namn`. Order: predict → trace → find the error (*Vad säger felet?*) → explain (*Förklara koden*, one sentence about the whole) → Parsons problem (*Ordna raderna*, with distractor lines) → modify → write → a mixed exercise that uses earlier chapters. Aim for about half reading exercises. Exercises done on the student's own pages go under the subheading `### Egna sidor`.
- **References in exercises.** Exercises, *Stanna upp* questions and solutions refer to other chapters or exercises only when the student needs the information, for example when an exercise builds on an earlier solution.
- **Solutions.** Every exercise and *Stanna upp* question in Del I has a solution in `losnNN-….qmd`, linked to its chapter with `losningar-till:` in the front matter. The filter numbers the exercises in both files, so the headings in a solution file must be in the same order as the exercises in the chapter. When an exercise changes, change its solution too. The heading "Kapitel N:" in each solution file, and exercise numbers mentioned in running text ("övning 2.5"), are written by hand and do not update automatically.

### Mini chapters (Del I)

Del I also has mini chapters: short, reference-like chapters about a single tool (for example string methods or rounding), placed just before the first chapter that needs them. The basics they build on are already covered in an ordinary chapter, so they have even less prose. The list and placement are in [OUTLINE.md](OUTLINE.md). A mini chapter takes about 1–2.5 hours with its exercises and differs from the template above:

- **Opening:** a sentence or two defining the topic, with no motivating example. The motivation comes from the chapter it precedes.
- **Body:** short code examples, each followed by a comment of a sentence or two, and a table of the methods or operators with links to MDN. No trace tables or worked examples, unless the topic has a known misconception (PEDAGOGIK.md §5).
- **No practice page** of its own: the console, or the practice page of the preceding chapter.
- **No *Stanna upp* box, summary or AI box** (an exception to the AI box rule under *Writing Conventions*).
- **Exercises:** 3–4, usually predict, find the error, and one that modifies or writes code. They have solutions like other exercises.

## Prose density (always applies)

The book tends to over-explain. Every rule above tells us what to add. This section is the counterweight. Extra words cost the student working memory and attention (PEDAGOGIK.md §11). Reinforcement belongs in the activities, where the student does the work, not in the prose.

- **Say each point once.** Explain a concept in one place with one example. Do not restate it in new words "to be safe". Repetition belongs in *Stanna upp* boxes, exercises and the summary.
- **One analogy per concept, briefly.** One or two sentences, then let the code take over. Do not mix analogies, extend them past the point they map, or return to them later in the chapter.
- **Get to code quickly.** Keep the opening short (see *Chapter openings*). Then follow the pattern: one or two sentences, a short example, a comment.
- **One idea per paragraph.** A paragraph that also generalises, gives a tip and points forward should be split or cut.
- **Don't talk about the text.** Avoid signposting and emphasis that announces a point instead of making it: "Det viktiga att förstå är…", "det är värt att säga rakt ut", "Här ser du tydligt…", "Lägg märke till…", and filler words like "faktiskt" and "alltså".- **Back-references only when the reader needs them.** Link to an earlier chapter when the student needs to look something up, not to remind them they have seen it. "(kapitel X)" is enough.
- **Keep explanations to the main line.** Brevity is not enough: ask whether each passage belongs where it stands. A passage that demonstrates a mistake belongs in the chapter's error section. A passage that walks through a longer example step by step (e.g. a trace table) is usually a worked example, and belongs at the start of the exercise that practises it. Corollaries of a rule already explained ("so a call can also be an argument") get a sentence and an example, not a section of their own.
- **No detours.** No side facts, practical caveats or previews of later chapters unless the current section needs them. At most one forward pointer per chapter, at the end.
- **Define terms briefly.** "Every term is explained" means a short definition where the term is first needed, not a paragraph.
- **Trust the activities.** Do not pre-empt every possible confusion in the prose. Cover the known misconceptions (PEDAGOGIK.md §5) once, then leave the rest to *Stanna upp* boxes and exercises.

**Don't keep text for other chapters' sake.** When tightening a chapter, judge each passage only by what this chapter needs. If another chapter refers to something you cut, leave that chapter alone and record the stale reference in [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md). Fix the reference when that chapter is reviewed, and strike the entry.

**Budget.** Chapter prose, excluding code blocks and exercises, should rarely exceed about 2,500 words. A chapter that grows past that is covering too much or saying it too often.

**Revision pass.** Before finishing a section, reread it and delete sentences that repeat the previous one, analogy extensions, meta-comments, hedges and unneeded back-references. MDN's [Functions](https://developer.mozilla.org/en-US/docs/Learn_web_development/Core/Scripting/Functions) article is a useful reference for density, though not for pedagogy. Our chapters keep their notional machine, misconceptions and check questions.

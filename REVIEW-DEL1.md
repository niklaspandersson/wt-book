# Review of Part I (chapters 1–11)

Review of *Del I – Grunden* made before the first course using the book (October 2026).
Line numbers refer to the state of the manuscript at the time of the review (commit `dedd9aa`).
Tick items off as they are fixed. Unticked items need a decision by the author.

**Note:** Part I has since been restructured (see OUTLINE.md). Chapter and exercise numbers below refer to the *old* order; open items still apply to the material wherever it now lives.

Chapter references now use cross-references (`kapitel [-@sec-…]`); every chapter has an id. Exercise numbers (e.g. "övning 2.5") are still written by hand because the numbering filter generates them.

## 1. Must fix before the course starts

- [ ] `index.qmd` – the preface is the Quarto placeholder ("This is a Quarto book.") in English.
- [ ] `summary.qmd` – placeholder ("In summary, this book has no content whatsoever.") is in the chapter list and will be published.
- [x] Broken cross-references `@sec-moduler` (`kap01:174`), `@sec-debugging` (`kap01:212`), `@sec-forms` (`kap10:247`). They render as `?@sec-…`.
- [x] `kap01:41` – refers to Appendix A and B, which do not exist yet.
- [x] `kap10:242` – code bug: `backgroundColor = value` should be `= färg` (ReferenceError).
- [x] `kap05:425` – the leap-year exercise says the code fails for year 400; it is correct for 400 and fails for 1900.
- [x] `kap02:186` – `"Röda stjärnor".length` is 13, not 14.
- [x] ~~`kap05:190` – the truth table header has unescaped pipes and breaks the table.~~ The review was wrong: Pandoc handles pipes inside code spans. The real problem was the opposite – the escaped `\|\|` in ch 2's operator table showed the backslashes. Fixed in ch 2.
- [x] `kap02:92`, `kap08:115` – MDN links use `/sv-SE/`; MDN has no Swedish JavaScript reference. Use `/en-US/`.

## 2. Structure of Part I (for the author to decide)

What works well: the order alternates between the language (2, 3, 5, 7, 8, 9, 11) and the web page (4, 6, 10), so students see results on the page from chapter 4. Chapters end with a bridge to the next one.

- [x] **Strings have no home.** CLAUDE.md lists strings in Part I and `kap02:199` promises "ett eget kapitel". String methods are scattered over ch 2–3; `split`, `join`, `slice`, `toLowerCase` are never taught (exercise 10.4 relies on `toLowerCase`). Suggestion: a strings section in ch 8 (where `split`/`join` connect to arrays), and remove the promise in ch 2. *Resolved by the restructure: new ch 7 on strings; `split`/`join` in ch 10.*
- [x] **Ch 2 and 3 overlap; ch 2 is overloaded.** Ch 2 (≈4 100 words) already teaches methods, dot notation and objects; ch 3 (≈1 700 words) teaches methods again and repeats the type-conversion examples (`kap03:137-147` vs `kap02:427-442`). Suggestion: move "Objekt – en första bekantskap" and the string-method examples from ch 2 to ch 3. *Resolved by the restructure: ch 2 is a general chapter; calling functions and methods moved to ch 4.*
- [x] **First look at objects uses `lag.namn` before `lag` exists** (`kap02:236`). Show a tiny object literal or use only built-in objects. *Resolved: ch 2 now creates the object with a literal before using it.*
- [x] **Interactivity arrives late.** Chapters 4–9 work with "change the variable and reload". The order is sensible (callbacks need functions); consider hinting earlier that interactivity is coming. *Resolved by the restructure: events in ch 5; later chapters use interactive examples.*
- [x] **Exercises repeat without saying so:** temperature classification (5.7, 6.2, 9.3), dark mode (6.6, worked example in ch 10, 10.2), live search (10.4, 11.3, 11.7). Make repetition explicit ("Gå tillbaka till övning 5.7 och …") and add something new each time. *Resolved: temperature exercises merged into one progressive exercise (9.6) building on 6.6; dark mode grows 3.8 → 5.2 → 9.9; ch 12 search exercises refer to 11.9.*
- [ ] **The running example changes between chapters:** quiz (2–4), grading (5–6), loops (7), students (8), VAT (9), quiz (10), products (11). Optional: let the quiz app grow chapter by chapter.
- [x] **Hardcoded "kapitel N" references** (≈30 places). Use chapter ids and cross-references.
- [ ] **Style inconsistencies** (braces and semicolons fixed; dashes remain): en dash (–) in ch 1, 2, 5, 7, 8, 11 vs em dash (—) in ch 3, 4, 6, 9, 10; brace-less `if`/`for` (`kap09:219-220`, `kap10:353-356`, `kap11:401-402`) despite ch 5's advice; missing semicolons (`kap03:110-115`, `kap09:74-75`).
- [ ] **AI tips** in several chapters open with generic advice ("kvaliteten beror på hur du frågar …", `kap02:490`, `kap08:409`, `kap09:408`); CLAUDE.md says that belongs only in the introduction.

## 3. Chapter by chapter

### Ch 1 – JavaScript och webbläsaren

- [x] `:64` – wrong chapter numbers: loops are ch 7 (not 6); writing reusable functions is ch 9 (not 3).
- [x] `:329` – exercise 1.4 refers to "samma projektmapp från övning 1.3 med Live Server igång", but 1.3 has no `script.js` and no Live Server.
- [x] `:259-272` – the calculator exercise uses `%` and `**` before ch 2 and only says "observe"; ask students to predict first.
- [x] `:364` – "CSS-attribut" → "CSS-egenskap".
- [x] Typos: `:152` "ett externt modulfil", `:178` "sk.", `:174` double space.
- [x] `:98` – `Cmd+Option+J` only works in Chrome.
- [ ] **Second revision: background on computers and programming languages.** Inspired by the introduction to *Eloquent JavaScript* (Haverbeke). Covered in the first lecture for now. Two parts are worth adding to *Vad är programmering?* (≈300–400 words, after the recipe analogy):
  - *From ones and zeros to JavaScript:* the same small program as bits, as named instructions, and as JavaScript. Shows that a programming language is written for people and that the browser translates it for the machine; prepares for naming in ch 2. Use our own quiz example (e.g. adding up three teams' scores) rather than Haverbeke's, which needs a `while` loop.
  - *Programming is hard, and that is normal:* struggling says nothing about your ability; take breaks, reread, work through the examples. Strengthens the existing paragraph about thinking precisely.
  - Skip: the BASIC/DOS history and the critique of "best practices" (mixed message for beginners).
  - Write our own text, add *Eloquent JavaScript* to `references.bib` and cite it as inspiration (CC BY-NC).

### Ch 2 – Värden, variabler och datatyper

- [x] `:33` – "tre av dem är de absolut viktigaste" but five are listed.
- [x] `:316` – "kompilatorn hjälper dig" is misleading; the error comes from the JavaScript engine at runtime.
- [x] `:168` – heading "Teckenkod och escape-sekvenser" mentions character codes that are never covered.
- [x] `:469` – unclosed parenthesis.
- [x] `:7` – "de senaste svaret" → "det senaste svaret".
- [x] `:87` – refers to "kapitlet om felhantering" (not written yet). Kept as plain text; turn into a cross-reference when the chapter exists. *Resolved: the sentence was removed when the NaN material moved to ch 6.*
- [x] The summary leaves out "uttryck och satser".

### Ch 3 – Att använda inbyggda funktioner

- [x] `:11` and `:34` – the same sentence twice.
- [x] `:23` "kallar också metod" → "kallas också metoder"; `:105` "värder" → "värde".
- [x] `:137-147` – repeats the type-conversion examples from ch 2 (see section 2). *Resolved by the restructure.*
- [x] `:64` – "`console.log` – gör ingenting" is imprecise; the console displays the function.
- [x] Title differs from OUTLINE ("Att använda funktioner"). *Resolved: chapter merged into ch 4 "Funktioner".*

### Ch 4 – Din kod möter webbsidan

- [x] `:144` – "till exempel `<script>`" is misleading: a `<script>` inserted with `innerHTML` does not run (the `<img onerror>` example is right).
- [x] `:60-68` – the example shows "Cannot **set** properties of null" but the text says to look for "Cannot **read** …".
- [x] `:26` – "`body` är roten" is wrong; the root is `html`.
- [x] `:153` – "webbasäkerhet" → "webbsäkerhet".

### Ch 5 – Villkorssatser och logik

- [x] `:87` – the argument about `< 100` for A does not hold; the point is that B (`>= 80`) needs no `< 90`.
- [x] `:11` – the scenario promises colour, which only arrives in ch 6.
- [x] `:218` – uses "falsy" before it is defined.
- [x] `:322` – typo `inlämnadIPtid`.
- [x] `:140` – "Strängoperatorerna" → "Jämförelseoperatorerna".
- [x] `:409` – "Följande funktion" – it is not a function.
- [x] `:468` – asks what `0 || "hej"` returns, but the chapter never explains that `&&`/`||` return operand values.
- [x] `:346` – the summary's falsy list leaves out `false` and `NaN`.

### Ch 6 – Stil och utseende

- [x] `:7` – "en tentaresultat" → "ett tentaresultat".
- [x] `:296` – "nästa kapitel … loopar — och sedan … egna funktioner" (arrays come in between).
- [x] `:227` – consider a note that CSS `display` rules override the `hidden` attribute.
- [x] `:154` – "Den andra parametern" → "argumentet" (parameters come in ch 9).
- [x] Exercise 6.2 is almost identical to 5.7. *Resolved: merged into exercise 9.6.*

### Ch 7 – Loopar

- [x] `:232-235` – the `do…while` example accepts invalid input: `"hej"` gives `NaN` and the loop exits.
- [x] `:177` – `underkändHittad` is set but never used.
- [x] Typos: `:89` "en av de vanligaste misstagen", `:266` "för kapitel om optimering", `:63` "skall".

### Ch 8 – Arrayer

- [x] `:290` – "på ren muskelminne".
- [x] `:115` – MDN link (see section 1).
- [x] Exercise 8.6 asks for `.style.backgroundColor` although ch 6 recommends `classList`. *Resolved: now asks for a CSS class.*

### Ch 9 – Att skriva egna funktioner

- [x] `:262` – "globalt scope" contradicts ch 1: with `type="module"` top-level variables have module scope.
- [x] `:69` – "Funktionen tar ett argument (`pris`)": `pris` is a parameter.
- [x] `:219-220` – brace-less `if`s go against ch 5's advice.
- [x] `:41` – "ett princip" → "en princip".
- [x] Exercise 9.5 asks for a function that both judges and prints, right after "en funktion bör göra en sak".

### Ch 10 – Händelser och interaktivitet

- [x] `:242` – code bug (see section 1); `:247` – broken `@sec-forms`.
- [x] `:203` – "händelser (kapitel 10)" – the chapter refers to itself.
- [x] Exercises 10.2 and 10.3 repeat the worked examples (copy-paste trap); start where the examples stop.
- [ ] Exercise 10.6 uses `data-färg`, but `dataset`/`getAttribute` are not taught until Part II. Note that `kap-dom-traversering` ("I kapitel 10 introducerade vi `data-`-attribut och `dataset` kortfattat") assumes ch 10 introduces them. Decide: add a short `dataset` intro to ch 10, or change the exercise and that sentence.

### Ch 11 – Objekt

- [x] `:226-237` – "`this.namn` är undefined!" is wrong in a module, where top-level `this` is `undefined` and the code throws a TypeError.
- [x] `:203` – the claim that students have used `this` implicitly via `element.textContent` is a stretch.
- [x] `:401-402` – brace-less loops.
- [x] Exercises 11.3 and 11.7 repeat the live search from 10.4. *Resolved: both now refer explicitly to the earlier exercise.*
- [ ] Possible addition after the TypeError callout: a brief mention of `?.`.

### Del I – Sammanfattning

- [ ] `:13` – promises forms, web storage and fetch in Part II; those chapters are not written yet.

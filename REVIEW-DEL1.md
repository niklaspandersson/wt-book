# Review of Part I (chapters 1–11)

Review of *Del I – Grunden* made before the first course using the book (October 2026).
Line numbers refer to the state of the manuscript at the time of the review (commit `dedd9aa`).
Tick items off as they are fixed.

## 1. Must fix before the course starts

- [ ] `index.qmd` – the preface is the Quarto placeholder ("This is a Quarto book.") in English.
- [ ] `summary.qmd` – placeholder ("In summary, this book has no content whatsoever.") is in the chapter list and will be published.
- [ ] Broken cross-references `@sec-moduler` (`kap01:174`), `@sec-debugging` (`kap01:212`), `@sec-forms` (`kap10:247`). They render as `?@sec-…`.
- [ ] `kap01:41` – refers to Appendix A and B, which do not exist yet.
- [ ] `kap10:242` – code bug: `backgroundColor = value` should be `= färg` (ReferenceError).
- [ ] `kap05:425` – the leap-year exercise says the code fails for year 400; it is correct for 400 and fails for 1900.
- [ ] `kap02:186` – `"Röda stjärnor".length` is 13, not 14.
- [ ] `kap05:190` – the truth table header `` `a || b` `` has unescaped pipes and breaks the table.
- [ ] `kap02:92`, `kap08:115` – MDN links use `/sv-SE/`; MDN has no Swedish JavaScript reference. Use `/en-US/`.

## 2. Structure of Part I (for the author to decide)

What works well: the order alternates between the language (2, 3, 5, 7, 8, 9, 11) and the web page (4, 6, 10), so students see results on the page from chapter 4. Chapters end with a bridge to the next one.

- [ ] **Strings have no home.** CLAUDE.md lists strings in Part I and `kap02:199` promises "ett eget kapitel". String methods are scattered over ch 2–3; `split`, `join`, `slice`, `toLowerCase` are never taught (exercise 10.4 relies on `toLowerCase`). Suggestion: a strings section in ch 8 (where `split`/`join` connect to arrays), and remove the promise in ch 2.
- [ ] **Ch 2 and 3 overlap; ch 2 is overloaded.** Ch 2 (≈4 100 words) already teaches methods, dot notation and objects; ch 3 (≈1 700 words) teaches methods again and repeats the type-conversion examples (`kap03:137-147` vs `kap02:427-442`). Suggestion: move "Objekt – en första bekantskap" and the string-method examples from ch 2 to ch 3.
- [ ] **First look at objects uses `lag.namn` before `lag` exists** (`kap02:236`). Show a tiny object literal or use only built-in objects.
- [ ] **Interactivity arrives late.** Chapters 4–9 work with "change the variable and reload". The order is sensible (callbacks need functions); consider hinting earlier that interactivity is coming.
- [ ] **Exercises repeat without saying so:** temperature classification (5.7, 6.2, 9.3), dark mode (6.6, worked example in ch 10, 10.2), live search (10.4, 11.3, 11.7). Make repetition explicit ("Gå tillbaka till övning 5.7 och …") and add something new each time.
- [ ] **The running example changes between chapters:** quiz (2–4), grading (5–6), loops (7), students (8), VAT (9), quiz (10), products (11). Optional: let the quiz app grow chapter by chapter.
- [ ] **Hardcoded "kapitel N" references** (≈30 places). Use chapter ids and cross-references.
- [ ] **Style inconsistencies:** en dash (–) in ch 1, 2, 5, 7, 8, 11 vs em dash (—) in ch 3, 4, 6, 9, 10; brace-less `if`/`for` (`kap09:219-220`, `kap10:353-356`, `kap11:401-402`) despite ch 5's advice; missing semicolons (`kap03:110-115`, `kap09:74-75`).
- [ ] **AI tips** in several chapters open with generic advice ("kvaliteten beror på hur du frågar …", `kap02:490`, `kap08:409`, `kap09:408`); CLAUDE.md says that belongs only in the introduction.

## 3. Chapter by chapter

### Ch 1 – JavaScript och webbläsaren

- [ ] `:64` – wrong chapter numbers: loops are ch 7 (not 6); writing reusable functions is ch 9 (not 3).
- [ ] `:329` – exercise 1.4 refers to "samma projektmapp från övning 1.3 med Live Server igång", but 1.3 has no `script.js` and no Live Server.
- [ ] `:259-272` – the calculator exercise uses `%` and `**` before ch 2 and only says "observe"; ask students to predict first.
- [ ] `:364` – "CSS-attribut" → "CSS-egenskap".
- [ ] Typos: `:152` "ett externt modulfil", `:178` "sk.", `:174` double space.
- [ ] `:98` – `Cmd+Option+J` only works in Chrome.

### Ch 2 – Värden, variabler och datatyper

- [ ] `:33` – "tre av dem är de absolut viktigaste" but five are listed.
- [ ] `:316` – "kompilatorn hjälper dig" is misleading; the error comes from the JavaScript engine at runtime.
- [ ] `:168` – heading "Teckenkod och escape-sekvenser" mentions character codes that are never covered.
- [ ] `:469` – unclosed parenthesis.
- [ ] `:7` – "de senaste svaret" → "det senaste svaret".
- [ ] `:87` – refers to "kapitlet om felhantering" (not written yet).
- [ ] The summary leaves out "uttryck och satser".

### Ch 3 – Att använda inbyggda funktioner

- [ ] `:11` and `:34` – the same sentence twice.
- [ ] `:23` "kallar också metod" → "kallas också metoder"; `:105` "värder" → "värde".
- [ ] `:137-147` – repeats the type-conversion examples from ch 2 (see section 2).
- [ ] `:64` – "`console.log` – gör ingenting" is imprecise; the console displays the function.
- [ ] Title differs from OUTLINE ("Att använda funktioner").

### Ch 4 – Din kod möter webbsidan

- [ ] `:144` – "till exempel `<script>`" is misleading: a `<script>` inserted with `innerHTML` does not run (the `<img onerror>` example is right).
- [ ] `:60-68` – the example shows "Cannot **set** properties of null" but the text says to look for "Cannot **read** …".
- [ ] `:26` – "`body` är roten" is wrong; the root is `html`.
- [ ] `:153` – "webbasäkerhet" → "webbsäkerhet".

### Ch 5 – Villkorssatser och logik

- [ ] `:87` – the argument about `< 100` for A does not hold; the point is that B (`>= 80`) needs no `< 90`.
- [ ] `:11` – the scenario promises colour, which only arrives in ch 6.
- [ ] `:218` – uses "falsy" before it is defined.
- [ ] `:322` – typo `inlämnadIPtid`.
- [ ] `:140` – "Strängoperatorerna" → "Jämförelseoperatorerna".
- [ ] `:409` – "Följande funktion" – it is not a function.
- [ ] `:468` – asks what `0 || "hej"` returns, but the chapter never explains that `&&`/`||` return operand values.
- [ ] `:346` – the summary's falsy list leaves out `false` and `NaN`.

### Ch 6 – Stil och utseende

- [ ] `:7` – "en tentaresultat" → "ett tentaresultat".
- [ ] `:296` – "nästa kapitel … loopar — och sedan … egna funktioner" (arrays come in between).
- [ ] `:227` – consider a note that CSS `display` rules override the `hidden` attribute.
- [ ] `:154` – "Den andra parametern" → "argumentet" (parameters come in ch 9).
- [ ] Exercise 6.2 is almost identical to 5.7.

### Ch 7 – Loopar

- [ ] `:232-235` – the `do…while` example accepts invalid input: `"hej"` gives `NaN` and the loop exits.
- [ ] `:177` – `underkändHittad` is set but never used.
- [ ] Typos: `:89` "en av de vanligaste misstagen", `:266` "för kapitel om optimering", `:63` "skall".

### Ch 8 – Arrayer

- [ ] `:290` – "på ren muskelminne".
- [ ] `:115` – MDN link (see section 1).
- [ ] Exercise 8.6 asks for `.style.backgroundColor` although ch 6 recommends `classList`.

### Ch 9 – Att skriva egna funktioner

- [ ] `:262` – "globalt scope" contradicts ch 1: with `type="module"` top-level variables have module scope.
- [ ] `:69` – "Funktionen tar ett argument (`pris`)": `pris` is a parameter.
- [ ] `:219-220` – brace-less `if`s go against ch 5's advice.
- [ ] `:41` – "ett princip" → "en princip".
- [ ] Exercise 9.5 asks for a function that both judges and prints, right after "en funktion bör göra en sak".

### Ch 10 – Händelser och interaktivitet

- [ ] `:242` – code bug (see section 1); `:247` – broken `@sec-forms`.
- [ ] `:203` – "händelser (kapitel 10)" – the chapter refers to itself.
- [ ] Exercises 10.2 and 10.3 repeat the worked examples (copy-paste trap); start where the examples stop.
- [ ] Exercise 10.6 uses `data-färg`, but `dataset`/`getAttribute` are not taught until Part II.

### Ch 11 – Objekt

- [ ] `:226-237` – "`this.namn` är undefined!" is wrong in a module, where top-level `this` is `undefined` and the code throws a TypeError.
- [ ] `:203` – the claim that students have used `this` implicitly via `element.textContent` is a stretch.
- [ ] `:401-402` – brace-less loops.
- [ ] Exercises 11.3 and 11.7 repeat the live search from 10.4.
- [ ] Possible addition after the TypeError callout: a brief mention of `?.`.

### Del I – Sammanfattning

- [ ] `:13` – promises forms, web storage and fetch in Part II; those chapters are not written yet.

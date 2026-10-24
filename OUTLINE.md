**Del I – Grunden: det du behöver för att komma igång**
*(kronologisk progression)*

* [X] Kap. 1 – JavaScript och webbläsaren *(webbens tre språk, vad är programmering, programmeringsspråk och syntax, konsolen, uttryck och satser, felmeddelanden, en första titt på script-elementet; laddningsordning, inline-skript och `defer` har flyttat till kap. 4)*
* [X] Kap. 2 – Värden och variabler *(värden, datatyper i översikt, konkatenering med `+`, let/const, tilldelning, objekt som samlar värden, punktnotation, typeof, dynamisk typning, namngivning)*
* [X] Kap. 3 – Att använda funktioner *(funktion som begrepp, anrop, argument, returvärden – "anropet ersätts av sitt returvärde", att göra eller ge tillbaka, fria funktioner och metoder, egenskap eller metod, nästlade anrop, vanliga fel, att läsa MDN)*
* [X] Kap. 4 – Din kod möter webbsidan *(querySelector, textContent, innerHTML, .style, classList, hidden)*
* [X] Kap. 5 – Att skriva egna funktioner *(definiera, definition vs anrop, parametrar, return, spårtabell för ett anrop, funktioner som tar element, scope och modulscope, funktioner som värden)*
* [X] Kap. 6 – Händelser *(addEventListener, callbacks, anonyma funktioner, pilfunktioner, click, input, .value, change, mushändelser, mönstret hämta → lyssna → läs → bearbeta → visa)*
* [X] Kap. 7 – Tal och text *(sammanslagning av gamla kap. 7 Tal och kap. 8 Strängar, bara grunderna: räknesätt, kortformerna, NaN, `Number()` och tal från formulärfält, `Math.round`/`floor`/`random`, `toFixed`, templatesträngar, `length`, `trim`/`toUpperCase`/`toLowerCase`/`includes`, oföränderliga strängar, kedjning, löst exempel med femstegsmönstret, avsnittet *Var hittar du mer?* med MDN)*
* [X] Kap. 8 – Sant och falskt *(booleska värden, jämförelser, `=` kontra `===`, logiska operatorer, hidden/disabled/checked, anmälningsformuläret som löst exempel; truthy/falsy bara som Bra att veta-ruta)*
* [X] Kap. 9 – Villkorssatser *(if/else, else if med spårtabell, sammansatta villkor, hälsningen med if och ternär, villkor i funktioner, early return, kontrollera inmatning som löst exempel, tangentbordshändelser)*
* [X] Kap. 10 – Loopar *(while med spårtabell, oändliga loopar, for, bygga upp ett resultat, while när antalet varv inte är känt, break, nedräkningen som löst exempel; continue, do...while och nästlade loopar bara som Bra att veta-ruta)*
* [X] Kap. 11 – Arrayer *(index med rutbild, length, push/pop, for och for...of, hitta det största med spårtabell, includes/indexOf, split/join med anmälan som löst exempel, querySelectorAll, lyssnare i loopar, event.target, arrayer av objekt; unshift/shift/splice bara som Bra att veta-ruta)*

**Del II – Fördjupning: webben som plattform**
*(tematisk, ordning öppen)*

* [X] Kap. 12 – DOM-traversering *(parentElement, children, siblings, closest, dataset)*
* [X] Kap. 13 – Skapa och ändra element *(createElement, append, remove, insertAdjacentHTML, flytta element, cloneNode)*
* [X] Kap. 14 – Händelser på djupet *(propagering, delegation, preventDefault, removeEventListener)*
* [X] Kap. 15 – Drag and drop *(draggable, DataTransfer, dragstart/dragover/drop, sortering, tillgänglighet)*
* [X] Kap. ?? – Javascript och media: bilder, ljud och video
* [X] Kap. ?? – Tid och animationer
* Kap. ?? – Formulär och användarinmatning *(form-element, .value, submit/input/change, validering)*

* Kap. ?? – Webblagring: localStorage och sessionStorage
* Kap. ?? – Fetch, JSON och datautbyte
* Kap. ?? – HTTP på djupet: REST, webb-API:er och query-parametrar
* Kap. ?? – Webb-API:er: en översikt
* Kap. ?? – Säkerhet på webben
* Kap. ?? – Optimering, SEO och webbprestanda

**Del III – Fördjupning: språket på djupet**
*(tematisk, ordning öppen)*

* [X] Kap. ?? – Objekt *(gamla kap. 13, flyttat från Del I och granskat: repetition, arrayer av objekt, referenser med pilbild, objekt som argument, nästlade objekt, hakparentesnotation och for...in, egna metoder med this, kiosken som löst exempel; Object.keys/values/entries flyttade till destructuring-kapitlet)*
* [X] Kap. ?? – Moduler: att organisera sin kodbas
* [X] Kap. ?? – Objektorienterad programmering (klasser, inkapsling, komposition)
* [X] Kap. ?? – Destructuring och spread
* [X] Kap. ?? – Arv och polymorfism
* Kap. ?? – Funktioner på djupet: closures och higher-order-funktioner
* Kap. ?? – Asynkron programmering: promises och async/await
* Kap. ?? – Funktionell arraytransformation: map, filter och find
* Kap. ?? – Felhantering och robusthet

**Del IV – Hantverk och arbetsmetodik**
*(tematisk)*

* Kap. ?? – Versionshantering med Git och GitHub
* Kap. ?? – Felsökning och debugging

**Lösningar** – lösningsförslag till alla övningar och Stanna upp-frågor i Del I (`losn01-…` till `losn11-…`, med inledningen `losningar.qmd`), som en egen del efter Del III. Konventionerna står i CLAUDE.md.

**Appendix A** – HTML-referens: element och semantik
**Appendix B** – CSS-referens och layout

---

# Kursplaner (UTKAST, oktober 2026)

> **Utkast.** Planerna nedan är förslag och inte beslutade. Kapitelnamnen i Del II–IV är föreslagna och finns ännu inte i `_quarto.yml`.

Boken ska användas i två kurser vid Linnéuniversitetet: **Webbteknik 2** (1ME322) och **Webbteknik 3** (1ME323). Båda är 7,5 hp och går på halvfart, tio veckor à 20 timmar.

**Tempo:** ett kapitel i den omarbetade stilen (4 000–6 000 ord inklusive kod och övningar, 10–12 övningar) tar 8–10 timmar för en student. Siffran beskriver kapitlen före den pågående kortningen (se *Bakgrund* nedan) och är inget mål. Brödtexten bör sällan överstiga cirka 2 500 ord (se *Prose density* i CLAUDE.md), och tiden bör gå till övningarna snarare än till läsningen. Två kapitel i veckan är därför det högsta rimliga tempot, och bara när kapitlen inte är begreppstunga. De svåraste veckorna (loopar och arrayer i Webbteknik 2, fetch i Webbteknik 3) får mest tid per idé.

## Webbteknik 2

**Förutsättningar:** vecka 7–8 är jul- och nyårslov utan undervisning. Studietiden räknas ändå, så de används till en uppgift. Vecka 10 är examinationsvecka. Fokus ligger på JavaScript och interaktivitet.

| Vecka | Kapitel | Inlämning |
|---|---|---|
| 1 | 1 JavaScript och webbläsaren, 2 Värden och variabler | |
| 2 | 3 Att använda funktioner, 4 Din kod möter webbsidan | |
| 3 | 5 Att skriva egna funktioner, 6 Händelser | **Uppgift 1:** en interaktiv sida |
| 4 | 7 Tal och text, 8 Sant och falskt, 9 Villkorssatser | Uppgift 2 delas ut |
| 5 | 10 Loopar, 11 Arrayer (med arrayer av objekt) | **Uppgift 2** (kap. 7–9) |
| 6 | Tid och animationer | Slutuppgiften delas ut |
| 7–8 | *Jul och nyår – ingen undervisning.* Arbete med slutuppgiften | |
| 9 | Handledning, felsökning, repetition | |
| 10 | Examination | **Slutuppgift** |

Vecka 4 har mest text men lättast begrepp. Vecka 5 har minst text men de svåraste begreppen. Slutuppgiften bygger på arrayer av objekt och timers, till exempel ett reaktionsspel, ett quiz med tidsgräns eller en nedräkning med animerad återkoppling. Den behöver tydliga delmål, så att studenterna inte kör fast under lovet utan handledning.

**Jämfört med förra kursomgången (2025/26):**

- *Kvar:* introduktion, variabler, villkor och booleska värden, Math och slumptal, funktioner, loopar, arrayer, strängar, DOM, händelser, stil med JavaScript, `Date` och timers.
- *Nytt eller fördjupat:* skillnaden mellan att använda och att skriva funktioner, pilfunktioner (förra året i Webbteknik 3), ternäroperatorn (förra året i Webbteknik 3), arrayer av objekt, CSS-animationer.
- *Flyttat till Webbteknik 3:* DOM-trädet och traversering, att skapa och ta bort element, händelsebubbling.
- *Utanför båda kurserna:* ljud och drag and drop (se *Öppna frågor*).

## Webbteknik 3

**Förutsättningar:** inga lov. Vecka 5 och vecka 10 är examinationsveckor. Kursplanens moment: strukturering av kod och data i objekt, DOM-manipulering, XML och JSON, asynkron kommunikation (AJAX), API-programmering, optimering (SEO, WPO, analys av användning), lokal webbserver.

| Vecka | Kapitel | Inlämning |
|---|---|---|
| 1 | Moduler (med lokal webbserver), Git och GitHub | |
| 2 | Objekt, JSON och webblagring (med XML som jämförelse) | |
| 3 | Skapa och ta bort element, Händelser och DOM-trädet | |
| 4 | Asynkron JavaScript och fetch (med `try`/`catch`) | **Uppgift 1** |
| 5 | Examination | |
| 6 | Klasser, Arraymetoder (`find`, `filter`, `map`) | |
| 7 | Formulär och validering | |
| 8 | HTTP, REST och webb-API:er | **Uppgift 2**, slutuppgiften delas ut |
| 9 | Optimering, SEO och webbprestanda | |
| 10 | Examination | **Slutuppgift** |

Tolv kapitel på åtta undervisningsveckor. JSON kommer före fetch, så att `JSON.parse` och `JSON.stringify` kan läras med `localStorage` utan nätverk och utan asynkron kod – en ny idé i taget. Fetch får en egen vecka eftersom det är kursens svåraste moment. I vecka 4 visar studenterna hämtad data med `for...of` och `createElement`; arraymetoderna kommer i vecka 6 och används på API-data i vecka 8. Vecka 7 har bara ett kapitel och är kursens enda utrymme för mer innehåll.

**Kursplanens moment och kapitlen:**

| Moment | Kapitel |
|---|---|
| Strukturering av kod och data i objekt | Objekt, Klasser, Moduler |
| DOM-manipulering | Skapa och ta bort element, Händelser och DOM-trädet |
| XML och JSON | JSON och webblagring (XML som avsnitt: samma data i båda formaten, `DOMParser`) |
| Asynkron kommunikation, AJAX | Asynkron JavaScript och fetch |
| API-programmering | HTTP, REST och webb-API:er |
| Optimering, SEO, WPO, analys av användning | Optimering, SEO och webbprestanda |
| Lokal webbserver | Moduler (avsnittet *Lokal utvecklingsserver*), fetch-kapitlet |

**Jämfört med förra kursomgången (2025/26):**

- *Kvar:* moduler, Git (med revert/reset), objekt med metoder och `this`, `localStorage`, JSON och XML-översikt, fetch och async/await, klasser med privata fält och getters/setters, `find`/`filter`/`map`, `??` och `?.`, formulär, `try`/`catch`, `URLSearchParams`, kartintegration med Leaflet, SEO och Lighthouse.
- *Flyttat till Webbteknik 2:* pilfunktioner och ternäroperatorn.
- *Nytt från Webbteknik 2:* DOM-trädet och traversering, händelsebubbling och delegering. Att skapa element fanns i båda kurserna förra året och samlas nu här.

## Föreslagen omstrukturering av Del II–IV

| Föreslaget kapitel | Del | Bygger på | Arbete | Kurs |
|---|---|---|---|---|
| Tid och animationer | II | `kap-tid-animationer.qmd` | Omskrivning | WT2 |
| Skapa och ta bort element | II | `kap-skapa-element.qmd` | Omskrivning | WT3 |
| Händelser och DOM-trädet | II | `kap-handelser-djupet.qmd` + `kap-dom-traversering.qmd` | Sammanslagning | WT3 |
| Formulär och validering | II | – | Nytt | WT3 |
| JSON och webblagring | II | – | Nytt (med XML-avsnitt) | WT3 |
| Asynkron JavaScript och fetch | II | – | Nytt (med felhantering) | WT3 |
| HTTP, REST och webb-API:er | II | – | Nytt (`URLSearchParams`, `??` och `?.` för saknade värden, Leaflet som exempel på ett bibliotek, `textContent` för data utifrån) | WT3 |
| Optimering, SEO och webbprestanda | II | – | Nytt (Lighthouse) | WT3 |
| Objekt | III | `kap-objekt.qmd` | Granskat | WT3 |
| Moduler | III | `kap-moduler.qmd` | Omskrivning | WT3 |
| Klasser | III | `kap-oop.qmd` + `kap-arv.qmd` | Sammanslagning (arv som avsnitt) | WT3 |
| Arraymetoder: find, filter och map | III | – | Nytt | WT3 |
| Git och GitHub | IV | – | Nytt (revert/reset, GitHub Pages för webbpublicering) | WT3 |

**Utanför kurserna**, kvar som valfria kapitel eller fördelade som avsnitt:

- Media (bilder, ljud och video) och Drag and drop – valfria kapitel.
- Destructuring och spread – blir korta avsnitt där det behövs, till exempel när data plockas ur ett API-svar.
- Closures och higher-order-funktioner – används inte i kurserna.
- Säkerhet och felhantering – blir avsnitt i fetch- och API-kapitlen.
- Webb-API:er: en översikt – går upp i HTTP-kapitlet.

## Öppna frågor

1. **Ljud och drag and drop** fanns i Webbteknik 2 förra året men ryms inte i någon av kurserna nu. Ska något av dem tillbaka? Webbteknik 3 har utrymme i vecka 7, men inget av dem står i kursplanen.
2. **Felsökning** står i kursplanen för Webbteknik 2, men felsökningskapitlet i Del IV är inte skrivet. Tills vidare täcks det av övningarna *Vad säger felet?* och av vecka 9.
3. **Kursplanen för Webbteknik 3** anger W3Schools och MDN som kurslitteratur. Boken behöver läggas till vid nästa revidering.

---

# Bakgrund

Boken skrevs först som ett utkast i kronologisk ordning. Hösten 2026 omarbetades Del I i flera steg. Webbkapitlen (DOM och händelser) flyttades tidigt, så att språkkapitlen kan använda interaktiva exempel. Funktionskapitlet delades i att använda och att skriva funktioner. Del I kortades för att rymmas i Webbteknik 2: tal och strängar slogs ihop, objekt flyttades till Del III och fördjupningar blev *Bra att veta*-rutor. Kap. 1–11 och kapitlet *Objekt* granskades sedan mot forskningen i PEDAGOGIK.md (övningsordning, Parsons-problem, spårtabeller, lösta exempel, *Stanna upp*-rutor), och alla övningar fick lösningsförslag. Detaljerna finns i git-historiken.

## Pågående iteration: kortare brödtext (oktober 2026)

Kapitlen förklarar för mycket och för många gånger, och studenterna riskerar att tappa fokus. Brödtexten kortas därför ett kapitel i taget enligt *Prose density* i CLAUDE.md: varje poäng sägs en gång, analogier hålls korta, och sidospår flyttas till felavsnittet, övningarna eller bort. Text behålls inte för att andra kapitel hänvisar till den. Samtidigt noteras i [ATT-GORA.md](ATT-GORA.md), under *Innehåll att se över i nästa iteration*, var kapitlet kunde ändras eller byggas ut. Det tas i en egen iteration när kortningen är klar. Sådana hänvisningar samlas i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md) och rättas när det hänvisande kapitlet ses över.

Brödtext före övningarna, utan kodblock:

| Kapitel | Ord | Status |
|---|---|---|
| 1 JavaScript och webbläsaren | ≈ 2 650 | Klart (från ≈ 3 700) |
| 2 Värden och variabler | ≈ 2 450 | Klart (från ≈ 3 350) |
| 3 Att använda funktioner | ≈ 1 700 | Klart (från ≈ 3 300) |
| 4 Din kod möter webbsidan | ≈ 1 850 | Klart (från ≈ 2 650) |
| 5 Att skriva egna funktioner | ≈ 2 600 | Klart (från ≈ 3 800) |
| 6 Händelser | ≈ 2 150 | Klart (från ≈ 3 000) |
| 7 Tal och text | ≈ 2 900 | Klart (från ≈ 4 000) |
| 8 Sant och falskt | ≈ 2 200 | Klart (från ≈ 2 400) |
| 9 Villkorssatser | ≈ 2 150 | Klart (från ≈ 2 650) |
| 10 Loopar | ≈ 2 350 | Klart (från ≈ 2 750) |
| 11 Arrayer | ≈ 2 600 | Klart (från ≈ 2 950) |

Kapitlen tas i läsordning (1, 2, 4, 6, 7 …), eftersom ändringar i tidigare kapitel påverkar de senare. Kap. 3 och 5 gjordes först, som pilot. Råder det minsta tvekan om ett avsnitt ska flyttas eller strykas, avgör författaren.

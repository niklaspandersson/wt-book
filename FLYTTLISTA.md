# Flyttlista

Material som har tagits bort från ett kapitel och ska flyttas till ett annat. Varje post beskriver vad som flyttas, vart, varför, och vilka följdändringar som behövs. Bocka av när flytten är genomförd och ta bort posten när den inte längre behövs som referens.

---

## Från kap. 1 – JavaScript och webbläsaren

Flyttas ut i samband med den pedagogiska genomgången av kapitel 1 (oktober 2026). Grundprincipen: kapitel 1 ska bara innehålla det en student utan programmeringsbakgrund kan förstå och har nytta av *nu*. Begrepp som förutsätter variabler, funktioner eller flera filer skjuts till det kapitel där de kan förklaras med kod som studenten redan har skrivit.

### 1. Modulernas övriga fördelar (eget scope, strikt läge, `import`/`export`)

- [x] **Eget scope** → kap. 5 Att skriva egna funktioner, avsnittet *Modulens scope* (`kap05-egna-funktioner.qmd`)
- [ ] **Strikt läge** och **`import`/`export`** → kap. Moduler (`kap-moduler.qmd`, avsnittet *Att använda moduler i webbläsaren*), där de redan finns

**Varför:** Kapitel 1 räknade upp fyra fördelar med moduler i ett svep: uppskjuten körning, eget scope, strikt läge och `import`/`export`. Det förde in ett tiotal okända begrepp (*scope, globalt scope, namnrymd, strict mode, satser, DOM*) innan studenten har sett en enda variabel. "Eget scope" förklarade dessutom ett okänt begrepp med ett annat. Bara uppskjuten körning behövs i kapitel 1, eftersom den förklarar varför skriptet kan ligga i `<head>`. Den finns kvar.

**Borttagen text (för referens):**

> **Eget scope.** Variabler och funktioner som deklareras i en modulfil är *lokala* till den filen. De läcker inte ut i det globala scopet och kan inte krocka med variabler från andra skript. Det är en viktig skillnad mot vanliga skript, där allt hamnar i samma globala s.k. namnrymd.
>
> **Strikt läge som standard.** Moduler körs alltid i *strict mode*, vilket bland annat innebär att vanliga programmeringsmisstag ger felmeddelanden istället för att tyst ignoreras.
>
> **Stöd för `import` och `export`.** Moduler kan dela kod mellan filer med `import`- och `export`-satserna.

**Följdändringar som måste göras:**

- [x] Kapitlet om egna funktioner sa att modulscope är något "som vi såg i kapitel [-@sec-om-javascript]". Nu förklaras modulscope på plats i `kap05-egna-funktioner.qmd`, med övningen nedan (punkt 2).
- [ ] `kap-moduler.qmd:78` säger att strict mode är något "som vi kort berört i tidigare kapitel". Kontrollera om något annat kapitel tar upp det. Annars stryker vi hänvisningen och förklarar strict mode där.

### 2. Övning 1.4 Del B – *Scope och den globala namnrymden*

- [x] → kap. 5 Att skriva egna funktioner, som övningen *Modulens scope*

**Varför:** Övningen använder `const` och bygger på begreppet scope. Kapitel 1 har inte infört något av dem: variabler kommer i kapitel 2 och scope i kapitel 4. I kapitel 4 kan studenten däremot förstå *varför* modulens beteende är att föredra, och övningen blir ett konkret experiment som stöder texten om modulscope (se följdändringen under punkt 1). Del A (laddningsordning) ligger kvar i kapitel 1 som egen övning, *Var ska skriptet stå?*.

**Borttagen text (för referens):**

> **Del B – Scope och den globala namnrymden**
>
> Deklarera en variabel i `script.js`:
>
> ```javascript
> const hälsning = "Hej från skriptfilen!";
> console.log(hälsning);
> ```
>
> Prova nu att skriva `hälsning` direkt i webbläsarens konsol.
>
> 1. Med `type="module"`: vad händer, och varför?
> 2. Ta bort `type="module"` (vanlig `<script src="...">`): vad händer nu?
>
> Vad säger detta om skillnaden i scope mellan moduler och vanliga skript? Varför är modulbeteendet att föredra i större projekt?

**Genomfört:** övningen ligger sist i kap. 5 och utgår från en funktion `hälsa` som använder variabeln `hälsning` på modulens översta nivå.

---

## Från kap. 4 Funktioner (delat i kap. 3 och 5, oktober 2026)

Flyttas ut i samband med att funktionskapitlet delades i *Att använda funktioner* (kap. 3) och *Att skriva egna funktioner* (kap. 5), enligt BOKOVERSIKT §3.3: tre sätt att skriva samma funktion och standardvärden för parametrar är mer än en nybörjare behöver i Del I.

### 3. Funktionsuttryck (`const f = function(…) { … }`) och hoisting

- [ ] → Del III, kapitlet *Funktioner på djupet* (inte skrivet ännu)

**Varför:** Pilfunktioner behövs för callbacks i kap. 6, men funktionsuttryck med `function` tränar syntax snarare än förståelse. Kap. 5 säger nu bara att en funktion är ett värde, visar pilfunktioner och ger regeln "definiera först, anropa sedan". Skillnaden i hoisting mellan deklarationer och uttryck förklaras inte i Del I. Kap. 6 visar att anonyma callbacks i andras kod ofta skrivs `function() { … }`, och kap. 13 använder `presentation: function() { … }` i en objektliteral – båda fungerar utan att begreppet funktionsuttryck har införts.

**Borttagen övning:** *Samma funktion, tre former* (deklaration, uttryck, pilfunktion; vilka går att anropa före definitionen?). Ersatt i kap. 5 av *Pilfunktioner med och utan klamrar*.

### 4. Standardvärden för parametrar (`function hälsa(namn = "okänd")`)

- [x] Förklaras där det först används: `kap-oop.qmd`, efter `sälj(antal = 1)`.
- [ ] Ta upp i Del III, kapitlet *Funktioner på djupet*, när det skrivs.

**Varför:** Används inte i Del I. Övningen *Parameter, argument eller returvärde?* i kap. 5 är omskriven utan standardvärde. Kap. `kap-oop.qmd` och `kap-destructuring.qmd` använder standardvärden; OOP-kapitlet förklarar dem nu i en mening vid första användningen.

---

## Från kap. 9 Sant och falskt (granskning oktober 2026)

Flyttas ut enligt BOKOVERSIKT §3.3: "En subtil regel som även erfarna programmerare snubblar på. Kan vänta till Del III, eller lösas med en `if`-sats i kap. 9 [nu kap. 10]."

### 5. Kortslutning, `&&`/`||` returnerar operander och standardvärden med `||`

- [x] Hälsningen "Hej, främling!" löses i stället med `if`/`else` och ternäroperatorn i kap. 10 (`kap10-villkor.qmd`, avsnittet om sammansatta villkor). Kap. 6 hänvisar nu till både kap. 9 och kap. 10.
- [ ] Ta upp i Del III, kapitlet *Funktioner på djupet* eller *Felhantering och robusthet*, när de skrivs – tillsammans med `??` och `?.`, som löser samma problem utan fallgropen med `0`.

**Varför:** Regeln att `||` returnerar den första truthy operanden är abstrakt, och mönstret `värde || standard` har en fallgrop (`0 || 10` ger `10`) som kräver att man förstår både truthy/falsy och kortslutning. Ingen senare del av boken använder mönstret. Kap. 9 behåller truthy och falsy som begrepp, eftersom kap. 10 använder dem i `if`-satser.

**Borttaget ur kap. 9:**

- Avsnittet *Kortslutningsutvärdering* (`false && vad_som_helst`, `true || vad_som_helst`).
- Avsnittet *`&&` och `||` returnerar operander*, med hälsningsexemplet `namnfält.value.trim() || "främling"` och fallgropen med `0`.
- Övningen *Hej, främling* (tre delar, den sista med ålder och standardvärdet 18) och de två sista raderna i *Logiktabellen* (`0 || "hej"`, `null && "hej"`).
- Rutan *`null` vs. `undefined`* (`null == undefined`); `==` förklaras nu bara med `5 == "5"` och `0 == ""`.

---

## Från kap. 10 Villkorssatser (granskning oktober 2026)

### 6. `switch` och *fall-through*

- [x] Kortad till rutan *Bra att veta: `switch`* i kap. 10, med ett exempel utan *fall-through* och en länk till MDN.
- [ ] Om `switch` behövs i ett senare kapitel (till exempel för tangenter i *Händelser på djupet*) kan den förklaras utförligare där.

**Varför:** BOKOVERSIKT §3.3 – `if`/`else if`/`else` räcker för Del I, och `switch` är en bekvämlighet. Ingen senare del av boken använder `switch`.

**Borttaget ur kap. 10:** avsnittet *`switch`-satsen* med veckodagsexemplet där måndag–fredag delar block (*fall-through*), och AI-prompten *`switch` utan `break`*.

---

## Från kap. 10 Loopar (nedskärning och granskning oktober 2026)

### 7. `continue`, `do...while` och nästlade loopar

- [x] Kortade till rutan *Bra att veta* i kap. 10, med en länk till MDN (vid nedskärningen för Webbteknik 2, se OUTLINE.md).
- [ ] Om något kapitel i Del II/III behöver nästlade loopar (till exempel ett rutnät eller en tabell) förklaras de där.

**Varför:** BOKOVERSIKT §3.3 – `while`, `for` och `break` räcker för Del I. Ingen senare del av boken använder `continue` eller `do...while`. Multiplikationstabellen var det enda exemplet på nästlade loopar, och den bygger på matematik (BOKOVERSIKT §3.4).

**Borttaget ur kap. 10 vid granskningen:** övningarna *Summera en sekvens*, *FizzBuzz* och *FizzBuzz på sidan* (ersatta av *Frågornas typer*, samma `%`-logik i ett quizsammanhang) och *Multiplikationstabell* (ersatt av *Biljettpriser*). Stjärnmönstret finns kvar som del D i *Hur många varv?*, nu med en enda loop.

---

## Från kap. 11 Arrayer (granskning oktober 2026)

### 8. `unshift`, `shift`, `splice` och `Array.from`

- [x] `unshift`/`shift`/`splice` är en *Bra att veta*-ruta i kap. 11 med en länk till MDN (vid nedskärningen för Webbteknik 2, se OUTLINE.md).
- [x] `Array.from` förklaras där det används: `kap-skapa-element.qmd` (meningen som hänvisade till arraykapitlet är omskriven).

**Varför:** BOKOVERSIKT §3.3 – kapitlet hade 32 underrubriker. `push` och `pop` räcker i Del I, och ingen senare del av boken använder `shift`, `unshift` eller `splice`. Skillnaden mellan NodeList och array förklaras utförligt i `kap-dom-traversering.qmd`; kap. 11 nämner den i två meningar.

**Borttaget ur kap. 11 vid granskningen:** rutorna *Arrayer är objekt* och *NodeList är inte en array* (med `Array.from`), färgknappsexemplet med `value` (nu övningen *Färgväljare med knappar*), övningarna *Skapa och utforska*, *Sök i listan*, *Numrerad lista på sidan*, *Markera element* (nu ett exempel i texten), *Filtrera en lista* (nu Parsons-problemet *Ordna raderna*) och *Interaktivt quiz* (nu *Bygg vidare på quizet*, som utgår från exemplet). *Hitta det största talet* är nu ett exempel med spårtabell.

### 9. `data-`-attribut (beslut 5 i OUTLINE.md)

- [x] Övningen *Färgväljare med knappar* använder `value` i stället för `data-färg`, som exemplet i kapitlet gjorde tidigare.
- [x] `kap-dom-traversering.qmd` påstår inte längre att arraykapitlet introducerade `dataset`, utan motiverar `data-` utifrån begränsningarna hos `value`.

---

## Från kapitlet Objekt (Del III, granskning oktober 2026)

### 10. `Object.keys`, `Object.values` och `Object.entries`

- [x] Kortade till rutan *Bra att veta* i kapitlet *Objekt*. `kap-destructuring.qmd` (avsnittet *Destructuring med `Object.entries`*) förklarar nu `Object.entries` från början och nämner `keys`/`values`.

**Varför:** BOKOVERSIKT §3.3. `Object.entries` med `[nyckel, värde]` i loopen förutsatte destructuring, som kapitlet fick förklara i förbigående. `for...in` med hakparentesnotation finns kvar som det enda sättet att gå igenom egenskaper i kapitlet.

### 11. `this` och pilfunktioner, `delete` och `in`

- [ ] Fallgropen att en metod skriven som pilfunktion saknar eget `this` kan förklaras utförligt i Del III, kapitlet *Funktioner på djupet*, när det skrivs. Kapitlet *Objekt* säger det nu i en mening.
- [ ] `delete` och operatorn `in` används inte i boken. Ta upp dem i *Felhantering och robusthet* om det behövs, tillsammans med `?.` (se punkt 5).

**Varför:** BOKOVERSIKT §3.3 – `this` hör hemma i OOP-kapitlet, som förklarar det från början (`kap-oop.qmd`, *`this` – det aktuella objektet*). Kapitlet behåller egna metoder med `this` i kortform, eftersom det förbereder klasserna i `kap-oop.qmd`.

**Borttaget ur kapitlet *Objekt*:** metodformen `presentation: function() { … }` (bara kortformen visas), rutan *Pilfunktioner och `this`* med felmeddelandet, avsnitten *Ta bort egenskaper* och *Kontrollera om en egenskap finns*, rutan *`for...in` vs. `for...of`* (en mening kvar), exemplen med studenter och kurser (ersatta av lag), produktkorten (ersatta av kiosken, med samma mönster; arrayer av objekt introduceras nu i kap. 11) och övningarna *Skapa och utforska*, *Studentregister* och *Nästlade objekt* (skolan).

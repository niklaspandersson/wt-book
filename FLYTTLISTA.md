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

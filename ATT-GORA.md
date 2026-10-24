# Att göra

Öppna punkter som inte hör till den pågående kortningen av brödtexten (se OUTLINE.md, *Bakgrund*). Inaktuella hänvisningar mellan kapitel står i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md). Stryk en punkt när den är åtgärdad.

## Före kursstart

- **`index.qmd`**: förordet är fortfarande Quartos platshållare ("This is a Quarto book.").
- **`summary.qmd`**: platshållaren ("In summary, this book has no content whatsoever.") står i kapitellistan och publiceras.
- **`del1-sammanfattning.qmd`**: lovar formulär, webblagring och hämtning av data i Del II. De kapitlen är inte skrivna än.
- **Kontrollera i en riktig webbläsare.** Lösningarna är testkörda med Node.js och jsdom, men följande går inte att testa där:
  - övning 1.6: Chromes spärr mot inklistring i konsolen (`allow pasting`);
  - övning 1.5, 3.4 och 9.3: felmeddelandenas exakta formulering i Firefox och Safari;
  - övning 4.7: vad *Visa sidkälla* visar för en sida som öppnats direkt från filsystemet;
  - övning 4.10 fråga 3: att `#facit { display: block; }` vinner över `hidden`;
  - övning 9.8: att `#ruta.blå` behövs för att färgen ska synas, och hur `keydown` upprepas när en tangent hålls nere;
  - rutan i kap. 7 om decimalkomma i `<input type="number">`.

## Del I

- **Inline-skript i hela Del I** (se *Scripts in Del I* i CLAUDE.md). Kap. 1 och 4–6 är omskrivna. Kvar: övningssidorna och instruktionerna i kap. 7–11 (`script.js`, `type="module"`, Live Server, "Skapa sedan `script.js` …", "Töm `script.js`"), deras lösningsfiler och `del1-sammanfattning.qmd`. Görs i samband med att respektive kapitel kortas.
- **Övningen *Frågornas typer* i kap. 10** bygger på `%` (resten vid division), som boken ska undvika. Byt till ett scenario utan `%`, till exempel kategorier som räknas upp i en fast ordning, eller räknare som nollställs.
- **"Minns du?"-frågor** (PEDAGOGIK §8) är inte införda. De är valfria. Inför dem bara där kapitlet bygger direkt på något tidigare, och håll dem snäva (se *Chapter conventions* i CLAUDE.md).
- **Kapitelinledningarna** ska ha ett motiverande exempel och en tydlig definition av kapitlets huvudbegrepp (se *Chapter openings* i CLAUDE.md). Se över dem i samband med kortningen av varje kapitel.
- **En ordlista svenska–engelska** (PEDAGOGIK §6) saknas. Felmeddelanden och MDN är på engelska (*call, argument, return value, method* …).
- **Del I-sammanfattningen** är bara en kort text. Den kunde bli ett repetitionskapitel med blandade övningar från hela Del I (PEDAGOGIK §8).
- *Valfritt:* låt quizet vara en röd tråd genom hela Del I. Exemplen växlar i dag mellan quiz, lag, biljetter och moms.
- *Valfritt:* ett kort stycke i kap. 1 om att programmering är svårt och att det är normalt (inspirerat av inledningen till *Eloquent JavaScript*, CC BY-NC). Väg mot *Prose density* i CLAUDE.md.

## Innehåll att se över i nästa iteration

Medan brödtexten kortas noteras här var ett kapitel kunde ändras eller byggas ut. Det gås igenom i en egen iteration när kortningen är klar. Det är förslag, inga beslut.

### Kap. 1 JavaScript och webbläsaren

- **Inga *Stanna upp*-rutor.** Lämpliga ställen: efter *Uttryck och satser* och efter *När något går fel*.
- **`console.log` och "inget värde".** Kap. 1 säger att `console.log("…")` är en sats som inte ger något värde. Kap. 3 säger att `console.log` returnerar `undefined`. Båda går att försvara, men bilderna bör stämma överens. Överväg att kap. 1 säger "ger värdet `undefined`, alltså inget värde".
- **Första egna sidan.** Övningen *Läs koden innan du kör den* kunde avslutas med att studenten lägger raden i ett `<script>`-element sist i `<body>` och ser att ändringen nu finns kvar efter omladdning. Det övar avsnittet *Att koppla JavaScript till en HTML-sida*, som ingen övning använder i dag.

### Kap. 2 Värden och variabler

- **Inga *Stanna upp*-rutor.** Lämpliga ställen: efter tilldelning med `let`, efter `const` och objekt.
- **Rutan *Deklarera alltid* saknar övning.** Lägg till en rad med en felstavad, odeklarerad tilldelning i *Vilka rader ger fel?* eller *Spåra poängen*, där studenten ska upptäcka att inget felmeddelande kommer.
- **Två namn, samma värde.** Pilbilden visar bara ett namn som pekas om. Ett exempel där `bonus = poäng;` följs av att `poäng` ändras (finns i övningen *Spåra poängen*) kunde stå i texten, som förberedelse för referenser i kapitlet *Objekt*.
- **Inget löst exempel.** Poängtavlan som ett objekt som uppdateras steg för steg kunde fylla den rollen.

### Kap. 3 Att använda funktioner

- **`prompt` returnerar alltid text.** Kapitlet säger det inte. Det knyter an till kap. 2 ("allt användaren skriver kommer som text") och förbereder `Number()` i kap. 7. En mening och en rad i *Vad svarar konsolen?* skulle räcka.
- **Nya möjligheter utan moduler:** övningar där studenten anropar funktioner från konsolen på en sida med eget skript blir möjliga från kap. 4.

### Kap. 4 Din kod möter webbsidan

- **Inga *Stanna upp*-rutor.** Lämpliga ställen: efter `querySelector` (vad returneras, och när blir det `null`?), efter *Ändra text med `textContent`* (sidan uppdateras inte av sig själv) och efter `classList`.
- **Inget löst exempel med namngivna delmål.** Femstegsmönstret från kap. 6 kunde användas i en enklare form (*hämta → bearbeta → visa*), till exempel poängtavlan som visar namn, poäng och runda och markerar det ledande laget. Det skulle också knyta ihop kapitlet, som nu är en rad verktyg efter varandra.
- **`innerHTML` med variabler.** Kapitlet visar bara `innerHTML` med fasta strängar. Att bygga HTML med `+` och variabler är klumpigt och väntar på templatesträngar i kap. 7. Kap. 7 kunde knyta an hit.

### Kap. 5 Att skriva egna funktioner

- **Var spårtabellen ska stå.** *Följ ett anrop steg för steg* ligger kvar i brödtexten. Enligt regeln om lösta exempel kunde den flyttas till övningen *Spåra exekveringen*. Författaren avgör.
- **Konsolen som verktyg.** Nu när skriptets funktioner nås från konsolen kunde en övning låta studenten anropa sina funktioner där med olika argument, som ett sätt att testa dem.
- **Inget löst exempel med namngivna delmål.** Spårtabellen fyller delvis den rollen.

### Kap. 6 Händelser

- **Inga *Stanna upp*-rutor.** Lämpliga ställen: efter *Callback-funktioner* (`hälsa` eller `hälsa()`?), efter räknaren (varför ligger `antal` utanför?) och efter det lösta exemplet (vilka steg körs när?).
- **Event-objektet** har bara `e.type` och används inte i kapitlets exempel eller övningar. Det behövs först i kap. 9 (`e.key`) och kap. 11 (`e.target`). Överväg att flytta det dit det behövs.
- **Ingen övning med pilfunktion som tar emot en parameter.** `(antal) => { … }` nämns men övas inte förrän event-objektet används.

## Del II–III

- **`kap-arv.qmd`, rad 692, 697 och 719:** `if`-satser utan klamrar, mot bokens egen rekommendation.

## Material som väntar på ett kapitel

Det här togs bort ur Del I och ska tas upp om och när kapitlet skrivs. Ingen del av boken använder det i dag.

- ***Funktioner på djupet*** (Del III):
  - funktionsuttryck (`const f = function (…) { … }`) och skillnaden i hoisting mot deklarationer;
  - standardvärden för parametrar (förklaras redan i en mening i `kap-oop.qmd`);
  - att en metod skriven som pilfunktion saknar eget `this` (kapitlet *Objekt* säger det i en mening).
- ***Felhantering och robusthet***, eller fetch- och API-kapitlen:
  - kortslutning, att `&&` och `||` returnerar operander, och `värde || standard` med fallgropen `0 || 10`;
  - `??` och `?.`, som löser samma problem utan fallgropen;
  - `delete` och operatorn `in`, om de behövs.
- **Bara i *Bra att veta*-rutor i Del I:** `switch`, `continue`, `do...while` och nästlade loopar. Om ett senare kapitel behöver dem förklaras de utförligt där.

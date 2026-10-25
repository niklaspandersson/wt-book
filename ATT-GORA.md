# Att göra

Öppna punkter som inte hör till den pågående kortningen av brödtexten (se OUTLINE.md, *Bakgrund*). Inaktuella hänvisningar mellan kapitel står i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md). Stryk en punkt när den är åtgärdad.

## Före kursstart

- **`index.qmd`**: förordet är fortfarande Quartos platshållare ("This is a Quarto book.").
- **`summary.qmd`**: platshållaren ("In summary, this book has no content whatsoever.") står i kapitellistan och publiceras.
- **`del1-sammanfattning.qmd`**: lovar formulär, webblagring och hämtning av data i Del II. De kapitlen är inte skrivna än.
- **Kontrollera i en riktig webbläsare.** Lösningarna är testkörda med Node.js och jsdom, men följande går inte att testa där:
  - övning 1.8: Chromes spärr mot inklistring i konsolen (`allow pasting`);
  - övning 1.5, 4.4 och 12.3: felmeddelandenas exakta formulering i Firefox och Safari;
  - övning 6.7: vad *Visa sidkälla* visar för en sida som öppnats direkt från filsystemet;
  - övning 6.10 fråga 3: att `#facit { display: block; }` vinner över `hidden`;
  - övning 17.7: att `#ruta.blå` behövs för att färgen ska synas, och hur `keydown` upprepas när en tangent hålls nere.

## Del I

- **"Minns du?"-frågor** (PEDAGOGIK §8) är inte införda. De är valfria. Inför dem bara där kapitlet bygger direkt på något tidigare, och håll dem snäva (se *Chapter conventions* i CLAUDE.md).
- **Kapitelinledningarna** ska ha ett motiverande exempel och en tydlig definition av kapitlets huvudbegrepp (se *Chapter openings* i CLAUDE.md). Se över dem i samband med kortningen av varje kapitel.
- **En ordlista svenska–engelska** (PEDAGOGIK §6) saknas. Felmeddelanden och MDN är på engelska (*call, argument, return value, method* …).
- **Del I-sammanfattningen** är bara en kort text. Den kunde bli ett repetitionskapitel med blandade övningar från hela Del I (PEDAGOGIK §8).
- *Valfritt:* låt quizet vara en röd tråd genom hela Del I. Exemplen växlar i dag mellan quiz, lag, biljetter och moms.
- *Valfritt:* ett kort stycke i kap. 1 om att programmering är svårt och att det är normalt (inspirerat av inledningen till *Eloquent JavaScript*, CC BY-NC). Väg mot *Prose density* i CLAUDE.md.

## Enhetlighet i Del I

Kap. 9, 10, 12, 14, 16 och 17 följer kapitelmallen i CLAUDE.md. Kap. 1, 2, 4, 6 och 7 skrevs före mallen och följer den bara delvis. Minikapitlen (kap. 3, 5, 8, 11, 13 och 15) har ett eget, kortare format. De punkter nedan som också står under respektive kapitel samlas här, så att de kan göras i ett svep.

- **Pilbilden** (PEDAGOGIK §5) används i kap. 2, 4, 6 och 7 men inte i kap. 9–17, där spårtabeller tar över. Överväg en pilbild för `text +=` i kap. 14 och för arrayen och `const` i kap. 16.
- **Scenarier.** Quizkvällen bär de flesta kapitel. Avvikare: kap. 4 (en analogi, ingen situation), kap. 12 (betyg i en kurs).
- **Exemplen styr i stället för språket och API:t** (se CLAUDE.md, *The language and the API come first*). Det gäller både rubriker och brödtext: avsnitt som lär ut en funktion genom ett längre scenario, och praktiska exempel som förklarar rad för rad det som redan är förklarat. Kap. 1–9 är genomgångna (oktober 2026). Kvar: kap. 10, 12, 14, 16 och 17, se GRANSKNING.md.
- **Läs i följd.** Läs kap. 4 → 5 → 6 → 7 och 10 → 11 → 12 i ett svep för att se om övergångar och ton håller ihop, nu också med minikapitlen emellan. Kap. 4 är kortast (≈ 1 700 ord) efter kortningen.

## Innehåll att se över i nästa iteration

Medan brödtexten kortas noteras här var ett kapitel kunde ändras eller byggas ut. Det gås igenom i en egen iteration när kortningen är klar. Det är förslag, inga beslut.

### Kap. 1 JavaScript och webbläsaren

- **`console.log` och "inget värde".** Kap. 1 säger att `console.log("…")` är en sats som inte ger något värde. Kap. 4 säger att `console.log` returnerar `undefined`. Båda går att försvara, men bilderna bör stämma överens. Överväg att kap. 1 säger "ger värdet `undefined`, alltså inget värde".
- **Första egna sidan.** Övningen *Läs koden innan du kör den* kunde avslutas med att studenten lägger raden i ett `<script>`-element sist i `<body>` och ser att ändringen nu finns kvar efter omladdning. Det övar avsnittet *Att koppla JavaScript till en HTML-sida*, som ingen övning använder i dag.

### Kap. 2 Värden och variabler

- **Två namn, samma värde.** Pilbilden visar bara ett namn som pekas om. Ett exempel där `bonus = poäng;` följs av att `poäng` ändras (finns i övningen *Spåra poängen*) kunde stå i texten, som förberedelse för referenser i kapitlet *Objekt*.

### Kap. 4 Att använda funktioner

- **Nya möjligheter utan moduler:** övningar där studenten anropar funktioner från konsolen på en sida med eget skript blir möjliga från kap. 6.

### Kap. 7 Att skriva egna funktioner

- **Konsolen som verktyg.** Nu när skriptets funktioner nås från konsolen kunde en övning låta studenten anropa sina funktioner där med olika argument, som ett sätt att testa dem.

### Kap. 10 Sant och falskt

- **Truthy och falsy** står kvar som *Bra att veta*-ruta, men ingen övning eller senare kapitel i Del I använder begreppen.

### Kap. 12 Villkorssatser

- **Scenariot handlar om betyg i en kurs**, medan resten av Del I använder quizkvällen. Samma beslut (godkänd, betygssteg, färg, ogiltig inmatning) kunde handla om ett lags resultat efter en quizrunda. Hänger ihop med punkten om quizet som röd tråd.
- **Ingen övning i brödtexten visar `.style` med ett värde som ändras hela tiden, vilket kap. 6 nämner som skälet att välja `.style`.** Övningen *Tangentbordsrörelser*, som gör det, ligger nu i kap. 17.

### Kap. 14 Loopar

- **Prislistans spårtabell** är nu ett löst exempel i övningen *Spåra summan*. Brödtexten har kvar spårtabellen för `while`, som är kapitlets modell. Fundera på om *Bygga upp ett resultat* behöver en bild av hur `text` växer (till exempel pilbilden) nu när tabellen är borta.
- **`continue`, `do...while` och nästlade loopar** nämns inte längre alls. Studenterna möter dem i andras kod och på MDN.

### Kap. 16 Arrayer

- **Grunderna flyttade till kap. 2.** Kapitlet börjar nu med *Ändra ett element*. Övningarna har kvar uppgifter om index och `length`, som nu repeterar kap. 2. Se över om de ska stå kvar, och om kapitlets övningssida och inledning håller ihop med det nya startläget.
- **Tabellen `frågor[1].alternativ[0]`** är del B i övningen *Förutsäg värdena*. I texten finns en mening kvar.
- **`querySelectorAll`, lyssnare i en loop och quizknapparna** har flyttat till kap. 17. *Arrayer av objekt* slutar nu med `for...of` över frågorna.

### Kap. 17 Händelser och många element

- **Del I slutar här.** Kapitlets sista stycke pekar vidare till Del II, men `del1-sammanfattning.qmd` (se *Före kursstart*) behöver ses över.
- **Överlapp med `kap-handelser-djupet.qmd`.** Bubbling och delegering förklaras nu i Del I. Kapitlet i Del II har samma innehåll och behöver bara propageringens faser, `preventDefault` och `removeEventListener` (se OUTLINE.md).
- **`Bygg vidare på quizet`** börjar med lyssnare i en loop och skrivs om med delegering i sista steget. Det lösta exemplet visar redan delegering. Överväg om ordningen ska vändas.

### Minikapitlen (kap. 3, 5, 8, 11, 13 och 15)

- **Stegtabellen för kedjade metoder** står kvar i brödtexten i *Skapa och ändra strängar*. Enligt formatet för minikapitel och regeln om lösta exempel kunde den flyttas till övningen *Spåra strängarna*. Författaren avgör.
- **Flyttal.** Rutan om att `0.1 + 0.2` ger `0.30000000000000004` är borttagen. Kommer det upp i en övning behöver lösningen förklara det.
- **Övningarna från gamla kap. 7 som behövde händelser** är strukna: *Ordna raderna* (svaret i stora bokstäver), *Bygg vidare på momsräknaren*, *Temperaturomvandlare*, *Teckenräknare* och *Poängtavlan räknar rätt*. Händelsekapitlet (kap. 9) kommer nu efter `Number()` och strängmetoderna och kunde ta upp någon av dem, till exempel teckenräknaren för `input`-händelsen.

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
- **Finns inte i Del I:** `switch`, `continue`, `do...while` och nästlade loopar. Om ett senare kapitel behöver dem förklaras de där.

# Att göra

Öppna punkter som inte hör till den pågående kortningen av brödtexten (se OUTLINE.md, *Bakgrund*). Inaktuella hänvisningar mellan kapitel står i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md). Stryk en punkt när den är åtgärdad.

## Före kursstart

- **Kontrollera i en riktig webbläsare.** Lösningarna är testkörda med Node.js och jsdom, men följande går inte att testa där:
  - övning 1.6: Chromes spärr mot inklistring i konsolen (`allow pasting`);
  - övning 1.5, 4.4 och 12.3: felmeddelandenas exakta formulering i Firefox och Safari;
  - övning 6.7: vad *Visa sidkälla* visar för en sida som öppnats direkt från filsystemet;
  - övning 6.10 fråga 3: att `#facit { display: block; }` vinner över `hidden`;
  - övning 17.7: att `#ruta.blå` behövs för att färgen ska synas, och hur `keydown` upprepas när en tangent hålls nere.

## Del I

- **"Minns du?"-frågor** (PEDAGOGIK §8) är inte införda. De är valfria. Inför dem bara där kapitlet bygger direkt på något tidigare, och håll dem snäva (se *Chapter conventions* i CLAUDE.md).
- **Kapitelinledningarna** ska ha ett motiverande exempel och en tydlig definition av kapitlets huvudbegrepp (se *Chapter openings* i CLAUDE.md). Kap. 1–4 är klara. Se över de övriga i samband med kortningen av varje kapitel.
- **En ordlista svenska–engelska** (PEDAGOGIK §6) saknas. Felmeddelanden och MDN är på engelska (*call, argument, return value, method* …).
- **Del I-sammanfattningen** är bara en kort text. Den kunde bli ett repetitionskapitel med blandade övningar från hela Del I (PEDAGOGIK §8).

## Enhetlighet i Del I

Kap. 9, 10, 12, 14, 16 och 17 följer kapitelmallen i CLAUDE.md. Kap. 1, 2 och 4 är slutgranskade. Kap. 6 och 7 skrevs före mallen och följer den bara delvis. Minikapitlen (kap. 3, 5, 8, 11, 13 och 15) har ett eget, kortare format. De punkter nedan som också står under respektive kapitel samlas här, så att de kan göras i ett svep.

- **Pilbilden** (PEDAGOGIK §5) används i kap. 2, 4, 6 och 7 men inte i kap. 9–17, där spårtabeller tar över. Överväg en pilbild för `text +=` i kap. 14 och för arrayen och `const` i kap. 16.
- **Scenarier.** Quizkvällen är inte ett genomgående exempel. Temat kan användas som vardagsexempel där det passar, vid sidan av andra scenarier som betyg, biljetter och moms, men varje kapitel eller övning som använder det ska förklara sammanhanget själv. Studenten ska inte behöva minnas quizet från ett tidigare kapitel. Det som återstår att rätta står under *Lösa hänvisningar till quizkvällen*.
- **Läs i följd.** Läs kap. 4 → 5 → 6 → 7 och 10 → 11 → 12 i ett svep för att se om övergångar och ton håller ihop, nu också med minikapitlen emellan. Kap. 4 är kortast (≈ 1 700 ord) efter kortningen.

## Lösa hänvisningar till quizkvällen

Genomgång av Del I och dess lösningar. Quizet introduceras bara i kap. 2, men flera kapitel öppnar som om berättelsen pågick. Stryk en punkt när den är åtgärdad.

**Tydliga fall:**

- **Kap. 6, öppningen** (*Poängtavlan som ingen ser*): "Quizkvällens poängtavla finns nu i konsolen … när kompisarna samlas runt datorn". Det värsta fallet: texten utgår från att studenten har byggt en poängtavla sedan kap. 2, vilket boken aldrig har bett om.
- **Kap. 7, övningen *Förklara koden*:** "för den som leder quizet". Övningen handlar bara om två lags poäng, och inget quiz syns.
- **Kap. 9, *Ett löst exempel: lagnamnet*:** "Domaren skriver in lagets namn … visas på poängtavlan". Bokens första domare, utan presentation. Poängtavlan är inte heller förklarad.
- **Kap. 10, *Stanna upp* efter *Jämföra strängar*:** "Domaren skriver `12` och `9`." "Någon skriver" eller "Du skriver" räcker.
- **Kap. 14, öppningen:** "Quizkvällen närmar sig, och domaren har tre önskemål". Fortsätter en berättelse med en person studenten inte har mött. Rättas öppningen fungerar de senare "domaren" i kapitlet, och "quizlag" i lösningen till kapitlets prislisteövning.
- **Kap. 16, öppningen:** "Anmälningarna till quizkvällen har börjat komma in" och "Domaren vill …". Samma mönster som kap. 14, och samma sak gäller "domaren" i *Ett löst exempel: anmäl flera lag*.
- **Kap. 17, öppningen:** "Quizsidan har tre svarsknappar." Sidan har inte visats ännu, eftersom övningssidan kommer efter meningen. Rättas öppningen fungerar "Quizet från kapitlets början" i *Ett löst exempel: quizknapparna*.

**Mindre fall:**

- **Bestämd form utan sammanhang:** "quizkvällen" i kap. 10 (öppningen). "En quizkväll" räcker.
- **Kap. 9, övningssidan:** rubriken `Quizkväll` står på en allmän sida med knappar, räknare och formulär.
- **Kap. 11, övningen *Slå upp själv*:** "Ett quiz med 128 deltagare ska åka buss" hänger ihop i sig, men verkar vara en rest. Vilken grupp som helst fungerar bättre.
- **Kap. 12, övningen *Förklara koden*:** strängen "Välkomna till quizet!" står utan sammanhang i ett kapitel om betyg, och återkommer i lösningsfilen.
- **Olika namn på samma roll:** *domaren*, *den som leder quizet* och *den som håller i quizet* (kap. 7, övningen om biljettpriset). Välj ett, om rollen blir kvar.
- **Kap. 16, *Arrayer av objekt*:** quizfrågan med en array av alternativ finns inte längre i kap. 2. Står också i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md).

Inga ändringar behövs där sammanhanget ges på plats (scenariot i kap. 2, öppningen i kap. 7, fristående övningar som i kap. 12 och 14), i hänvisningar som namnger övningen (kap. 6 och 17), eller i kod med lagobjekt och exempeltexter, som fungerar utan ett quiz.

## Innehåll att se över i nästa iteration

Medan brödtexten kortas noteras här var ett kapitel kunde ändras eller byggas ut. Det gås igenom i en egen iteration när kortningen är klar. Det är förslag, inga beslut.

### Kap. 7 Att skriva egna funktioner

- **Konsolen som verktyg.** Nu när skriptets funktioner nås från konsolen kunde en övning låta studenten anropa sina funktioner där med olika argument, som ett sätt att testa dem.

### Kap. 10 Sant och falskt

- **Truthy och falsy** står kvar som *Bra att veta*-ruta, men ingen övning eller senare kapitel i Del I använder begreppen.

### Kap. 12 Villkorssatser

- **Ingen övning i brödtexten visar `.style` med ett värde som ändras hela tiden, vilket kap. 6 nämner som skälet att välja `.style`.** Övningen *Tangentbordsrörelser*, som gör det, ligger nu i kap. 17.

### Kap. 14 Loopar

- **Prislistans spårtabell** är nu ett löst exempel i övningen *Spåra summan*. Brödtexten har kvar spårtabellen för `while`, som är kapitlets modell. Fundera på om *Bygga upp ett resultat* behöver en bild av hur `text` växer (till exempel pilbilden) nu när tabellen är borta.
- **`continue`, `do...while` och nästlade loopar** nämns inte längre alls. Studenterna möter dem i andras kod och på MDN.

### Kap. 16 Arrayer

- **Tabellen `frågor[1].alternativ[0]`** är del B i övningen *Förutsäg värdena*. I texten finns en mening kvar.

### Kap. 17 Händelser och många element

- **Överlapp med `kap-handelser-djupet.qmd`.** Bubbling och delegering förklaras nu i Del I. Kapitlet i Del II har samma innehåll och behöver bara propageringens faser, `preventDefault` och `removeEventListener` (se OUTLINE.md).

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

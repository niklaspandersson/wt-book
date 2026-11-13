# Att göra

Öppna punkter som inte hör till den pågående kortningen av brödtexten (se OUTLINE.md, *Bakgrund*). Inaktuella hänvisningar mellan kapitel står i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md). Stryk en punkt när den är åtgärdad.

## Före kursstart

- **Kontrollera i en riktig webbläsare.** Lösningarna är testkörda med Node.js och jsdom, men följande går inte att testa där:
  - övning 1.6: Chromes spärr mot inklistring i konsolen (`allow pasting`);
  - övning 1.5, 4.4 och 11.3: felmeddelandenas exakta formulering i Firefox och Safari;
  - övning 6.7: vad *Visa sidkälla* visar för en sida som öppnats direkt från filsystemet;
  - övning 6.10 fråga 3: att `#facit { display: block; }` vinner över `hidden`;
  - övning 17.7: att `#ruta.blå` behövs för att färgen ska synas, och hur `keydown` upprepas när en tangent hålls nere;
  - övning 15.1: utskriften för Skift och mellanslag, och att `e.shiftKey` är `true` redan i Skift-tangentens egen `keydown`;
  - övning 16.2: att `style.left` utan enhet ignoreras, och hur pricken beter sig med lyssnaren på sig själv.

## Del I

- **"Minns du?"-frågor** (PEDAGOGIK §8) är inte införda. De är valfria. Inför dem bara där kapitlet bygger direkt på något tidigare, och håll dem snäva (se *Chapter conventions* i CLAUDE.md).
- **Kapitelinledningarna** ska ha ett motiverande exempel och en tydlig definition av kapitlets huvudbegrepp (se *Chapter openings* i CLAUDE.md). Kap. 1–4, 9 och 10 är klara. Se över de övriga i samband med kortningen av varje kapitel.
- **En ordlista svenska–engelska** (PEDAGOGIK §6) saknas. Felmeddelanden och MDN är på engelska (*call, argument, return value, method* …).
- **Del I-sammanfattningen** är bara en kort text. Den kunde bli ett repetitionskapitel med blandade övningar från hela Del I (PEDAGOGIK §8).

## Enhetlighet i Del I

Kap. 11, 13, 14 och 17 följer kapitelmallen i CLAUDE.md. Kap. 1, 2, 4, 9 och 10 är slutgranskade. Kap. 6 skrevs före mallen och följer den bara delvis. Kap. 7 är granskat mot mallen. Minikapitlen (kap. 3, 5, 8, 12, 15 och 16) har ett eget, kortare format. De punkter nedan som också står under respektive kapitel samlas här, så att de kan göras i ett svep.

- **Pilbilden** (PEDAGOGIK §5) används i kap. 2, 4, 6 och 7 men inte i kap. 9–17, där spårtabeller tar över. Överväg en pilbild för `text +=` i kap. 13 och för arrayen och `const` i kap. 14.
- **Scenarier.** Quizkvällen är inte ett genomgående exempel. Temat kan användas som vardagsexempel där det passar, vid sidan av andra scenarier som betyg, biljetter och moms, men varje kapitel eller övning som använder det ska förklara sammanhanget själv. Studenten ska inte behöva minnas quizet från ett tidigare kapitel. Det som återstår att rätta står under *Lösa hänvisningar till quizkvällen*.
- **Rubriken *Ett löst exempel: …*** känns som en mall. Byt till bara exemplets namn (*Nedräkningen*, *Kiosken*), som i kap. 6. Gäller kap. 11, 13, 14, 17 och objektkapitlet, och hänvisningarna till rubrikerna i kapitlens övningar och i lösningsfilerna `losn11`, `losn13` och `losn17`. Uppdatera samtidigt rubrikerna i ATT-GORA.md och INAKTUELLA-HANVISNINGAR.md som nämner de gamla namnen.
- **Övningssidor.** Kap. 9 har nu en skelettsida, och varje avsnitt och övning visar sin HTML (se *Practice page* i CLAUDE.md). Avgör för kap. 11 (49 rader) och 17 (59) om exemplen bygger en sammanhängande sida eller är fristående. Är de fristående, gör om dem på samma sätt.
- **Läs i följd.** Läs kap. 4 → 5 → 6 → 7, 9 → 10 → 11 → 12 och 14 → 15 → 16 → 17 i ett svep för att se om övergångar och ton håller ihop, nu också med minikapitlen emellan. Kap. 4 är kortast (≈ 1 700 ord) efter kortningen.

## Lösa hänvisningar till quizkvällen

Genomgång av Del I och dess lösningar. Quizet introduceras bara i kap. 2, men flera kapitel öppnar som om berättelsen pågick. Stryk en punkt när den är åtgärdad.

**Tydliga fall:**

- **Kap. 13, öppningen:** "Quizkvällen närmar sig, och domaren har tre önskemål". Fortsätter en berättelse med en person studenten inte har mött. Rättas öppningen fungerar de senare "domaren" i kapitlet, och "quizlag" i lösningen till kapitlets prislisteövning.
- **Kap. 14, öppningen:** "Anmälningarna till quizkvällen har börjat komma in" och "Domaren vill …". Samma mönster som kap. 13, och samma sak gäller "domaren" i *Ett löst exempel: anmäl flera lag*.
- **Kap. 17, öppningen:** "Quizsidan har tre svarsknappar." Sidan har inte visats ännu, eftersom övningssidan kommer efter meningen. Rättas öppningen fungerar "Quizet från kapitlets början" i *Ett löst exempel: quizknapparna*.

**Mindre fall:**

- **Kap. 12, övningen *Slå upp själv*:** "Ett quiz med 128 deltagare ska åka buss" hänger ihop i sig, men verkar vara en rest. Vilken grupp som helst fungerar bättre.
- **Kap. 11, övningen *Förklara koden*:** strängen "Välkomna till quizet!" står utan sammanhang i ett kapitel om betyg, och återkommer i lösningsfilen.
- **Olika namn på samma roll:** *domaren* (kap. 13 och 14) och *arrangörerna* (kap. 7). Välj ett, om rollen blir kvar.
- **Kap. 14, *Arrayer av objekt*:** quizfrågan med en array av alternativ finns inte längre i kap. 2. Står också i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md).

Inga ändringar behövs där sammanhanget ges på plats (scenariot i kap. 2, öppningen i kap. 7, fristående övningar som i kap. 11 och 13), i hänvisningar som namnger övningen (kap. 6 och 17), eller i kod med lagobjekt och exempeltexter, som fungerar utan ett quiz.

## Innehåll att se över i nästa iteration

Medan brödtexten kortas noteras här var ett kapitel kunde ändras eller byggas ut. Det gås igenom i en egen iteration när kortningen är klar. Det är förslag, inga beslut.

### Kap. 7 Att skriva egna funktioner

- **Konsolen som verktyg.** Nu när skriptets funktioner nås från konsolen kunde en övning låta studenten anropa sina funktioner där med olika argument, som ett sätt att testa dem.

### Kap. 10 Sant och falskt

- **Truthy och falsy** står kvar som *Bra att veta*-ruta, men ingen övning eller senare kapitel i Del I använder begreppen.

### Kap. 11 Villkorssatser

- **Formulärhändelserna ska bort.** Hälsningen med `if` och ternär lyssnar på `input`. Låt den läsa fältet vid klick, eller byt exempel. Hälsningen med "Hej, !" finns inte längre i något tidigare kapitel (se INAKTUELLA-HANVISNINGAR.md).
- **Ingen övning i brödtexten visar `.style` med ett värde som ändras hela tiden, vilket kap. 6 nämner som skälet att välja `.style`.** Övningen *Tangentbordsrörelser*, som gör det, ligger i kap. 17 och kan flytta till kap. 15 (se kap. 17 nedan).

### Kap. 13 Loopar

- **Prislistans spårtabell** är nu ett löst exempel i övningen *Spåra summan*. Brödtexten har kvar spårtabellen för `while`, som är kapitlets modell. Fundera på om *Bygga upp ett resultat* behöver en bild av hur `text` växer (till exempel pilbilden) nu när tabellen är borta.
- **`continue`, `do...while` och nästlade loopar** nämns inte längre alls. Studenterna möter dem i andras kod och på MDN.

### Kap. 14 Arrayer

- **Tabellen `frågor[1].alternativ[0]`** är del B i övningen *Förutsäg värdena*. I texten finns en mening kvar.
- **Övningen *Längsta ordet*** ska visa resultatet "medan användaren skriver", och lösningen lyssnar på `input`. Formulärhändelserna finns inte längre i Del I. Låt sidan läsa fältet vid klick.
- **Ordbudgeten.** Avsnittet om `split` och `join` (från det strukna minikapitlet, november 2026) gör kapitlet längre. Räkna orden i granskningen.

### Kap. 15 *Tangentbordet*

- **Tangentövningarna från kap. 17** (se nedan) kan flyttas hit, nu när kapitlet kommer efter villkorssatserna och kan använda `if` med `e.key`. Minikapitlet har plats för 3–4 övningar, så välj bland dem.

### Kap. 16 *Musen* (utkast)

- **Övningssidan.** Kapitlet skickar studenten till övningssidan från kap. 9, men minikapitel ska använda konsolen eller en egen liten sida, som kap. 15. Lyssnarna från tidigare exempel ligger dessutom kvar på sidan och kan skymma det som exemplet visar.
- **Granska utkastet** mot formatet för minikapitel. Övningen *Vänster eller höger* använder `classList.toggle` med villkor från kap. 10, kontrollera att det står så där.

### Kap. 17 Händelser och många element

- **Följdändringarna efter flytten är gjorda**: event-objektet och tangenterna är borta ur brödtexten, öppningen motiverar loop och delegering, `e.currentTarget` har ett eget avsnitt, och *Live-sökning* är struken. Kvar att göra i granskningen:
  - Övningarna om tangenter (*Ordna raderna*, *Tangentbordsrörelser*, *Svara med Enter*, delar av *Vad skrivs ut?* och snutt B i *Vad säger felet?*) handlar inte om kapitlets ämne. Flytta dem till kap. 15 och ersätt dem med övningar om bubbling, delegering och `e.currentTarget`. *Ordna raderna* bör handla om delegering. Då kan stycket `#tangent` tas bort från övningssidan.
  - `e.currentTarget` har ingen övning.
  - Snutt C i *Vad säger felet?* (`e` utan parameter) finns nu också i kap. 9. Byt till ett fel som hör till kapitlet, till exempel `e.target` som blir ett element inuti knappen.

- **Överlapp med `kap-handelser-djupet.qmd`.** Bubbling och delegering förklaras nu i Del I. Kapitlet i Del II har samma innehåll och behöver bara propageringens faser, `preventDefault` och `removeEventListener` (se OUTLINE.md).

### Kap. 12 *Avrunda och slumpa*

- **Villkorssatser kan användas** nu när kapitlet kommer efter kap. 11. Se över om någon övning blir bättre med `if`, till exempel en tärning som säger till vid en sexa eller en avrundning som jämförs med ett gränsvärde.

### Minikapitlen (kap. 3, 5, 8, 12, 15 och 16)

- **Stegtabellen för kedjade metoder** står kvar i brödtexten i *Skapa och ändra strängar*. Enligt formatet för minikapitel och regeln om lösta exempel kunde den flyttas till övningen *Spåra strängarna*. Författaren avgör.
- **Flyttal.** Rutan om att `0.1 + 0.2` ger `0.30000000000000004` är borttagen. Kommer det upp i en övning behöver lösningen förklara det.
- **Övningarna från gamla kap. 7 som behövde händelser** är strukna: *Ordna raderna* (svaret i stora bokstäver), *Bygg vidare på momsräknaren*, *Temperaturomvandlare*, *Teckenräknare* och *Poängtavlan räknar rätt*. Ingen av dem har fått någon ny plats. Teckenräknaren passar i formulärkapitlet.

## Del II–III

- **`kap-arv.qmd`, rad 692, 697 och 719:** `if`-satser utan klamrar, mot bokens egen rekommendation.

## Material som väntar på ett kapitel

Det här togs bort ur Del I och ska tas upp om och när kapitlet skrivs. Ingen del av boken använder det i dag.

- ***Formulär och validering*** (Del II, Webbteknik 3), flyttat ur Del I i november 2026:
  - händelserna `input` och `change`, `<select>` och kryssrutor med `checked`. Avsnitten finns i `kap09-handelser.qmd` i commit `138d256`;
  - övningarna *Spegla texten* (`kap09-handelser.qmd`) och *Live-sökning* (`kap17-manga-element.qmd`), med lösningar, i samma commit;
  - att `.value` läses i `keydown` innan det nya tecknet har kommit in i fältet, om formulärkapitlet tar upp tangenter i textfält.

- ***Funktioner på djupet*** (Del III):
  - funktionsuttryck (`const f = function (…) { … }`) och skillnaden i hoisting mot deklarationer;
  - standardvärden för parametrar (förklaras redan i en mening i `kap-oop.qmd`);
  - att en metod skriven som pilfunktion saknar eget `this` (kapitlet *Objekt* säger det i en mening).
- ***Felhantering och robusthet***, eller fetch- och API-kapitlen:
  - kortslutning, att `&&` och `||` returnerar operander, och `värde || standard` med fallgropen `0 || 10`;
  - `??` och `?.`, som löser samma problem utan fallgropen;
  - `delete` och operatorn `in`, om de behövs.
- **Finns inte i Del I:** `switch`, `continue`, `do...while` och nästlade loopar. Om ett senare kapitel behöver dem förklaras de där.

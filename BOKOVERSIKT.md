# Översikt av boken i ljuset av forskningen

Översikt av manuskriptet som det ser ut i oktober 2026 (efter bantningen av kap. 2), bedömt utifrån forskningssammanfattningen i [PEDAGOGIK.md](PEDAGOGIK.md) och målgruppen i CLAUDE.md: kompletta nybörjare, många utan naturvetenskaplig bakgrund och med begränsade kunskaper i matematik.

Del I är granskad kapitel för kapitel. Del II och III är granskade på strukturnivå: rubriker, längd och övningstyper. Öppna punkter i [REVIEW-DEL1.md](REVIEW-DEL1.md) upprepas inte här.

---

## 1. Sammanfattning

Boken har en stark grund. Den börjar med konkreta scenarier, den visar resultat på webbsidan tidigt, den behandlar felmeddelanden som hjälp och den använder AI på ett sätt som stämmer med forskningen. Tre saker skiljer den ändå från vad forskningen rekommenderar för den här målgruppen:

1. **Övningarna börjar för högt upp.** Ungefär 60 % av övningarna i Del I ber studenten skriva nytt ("Skapa en sida som …"). Förutsäga, spåra och förklara kod – de färdigheter som enligt forskningen föregår och förutsäger förmågan att skriva – utgör en mindre del. Parsons-problem saknas helt.
2. **Kapitlen introducerar för mycket.** Varje kapitel i Del I har 16–32 underrubriker och mellan 2 700 och 4 300 ord. Flera kapitel tar med fördjupningar som nybörjaren inte behöver ännu, och programmeringsbegrepp bygger tätt på varandra (*learning edge momentum*). Den som tappar ett begrepp får svårare med nästa.
3. **Bilden av vad datorn gör försvinner efter kap. 2.** Kap. 2 lovar att pilmodellen "kommer att följa oss genom boken", men efter kap. 2 finns inga diagram i Del I. Funktionsanrop, loopar, arrayer och referenser förklaras utan modell.

Dessutom finns en handfull exempel och övningar där svårigheten ligger i matematiken snarare än i programmeringen.

### Prioriterade åtgärder

| # | Åtgärd | Varför (se PEDAGOGIK.md) | Omfattning |
|---|---|---|---|
| 1 | Ordna om och komplettera övningarna i varje kapitel enligt *förutsäg → spåra → förklara → Parsons → modifiera → skriv* | §1–3 | Medel, kan göras kapitel för kapitel |
| 2 | Byt ut matematikberoende exempel och övningar (lista i §3.4) | §6 | Liten |
| 3 | Låt pilmodellen och spårtabeller återkomma i kap. 4, 10, 11 och 12 | §5 | Medel |
| 4 | Flytta fördjupningar ur Del I (lista i §3.3) | §4, §6 | Medel till stor |
| 5 | Ett löst exempel med namngivna delmål per kapitel, med ett återkommande mönster | §4 | Medel |
| 6 | Återkommande felmeddelandeövningar och övningar som blandar gamla och nya begrepp | §7–8 | Liten |
| 7 | Säg uttryckligen i kap. 1 att programmering inte kräver matematik | §6 | Liten |

---

## 2. Det som redan stämmer med forskningen

- **Scenariot först.** Nästan alla kapitel börjar med ett igenkännbart problem (quizkvällen, poängtavlan som räknar fel, lagnamnet som behöver städas). Det ger begreppen ett syfte innan de introduceras.
- **Webbsidan tidigt.** Omstruktureringen gör att studenterna ser resultat på sidan från kap. 3 och kan bygga interaktivt från kap. 5. Det ger motivation och konkreta exempel.
- **Felmeddelanden som hjälp.** Kap. 1 lär ut att läsa ett felmeddelande del för del, och övningen *Gör fel med flit* är ett utmärkt PRIMM-exempel.
- **Pilmodellen för variabler.** Namn som pekar på värden är i linje med forskningen om metaforer: en "låda" förstärker missuppfattningen att en variabel kan rymma flera värden (Hermans m.fl. 2018).
- **Förutsägelseövningar finns.** Kap. 6, 8 och 9 har bra "ange utan att köra"-övningar, och flera kapitel har spårningsövningar.
- **AI-rutorna.** De låter AI:n förhöra, förklara och skapa övningsmaterial, men inte lösa uppgifterna. Det är precis vad forskningen om "guardrails" pekar mot (Bastani m.fl. 2025; Prather m.fl. 2024).
- **En idé i taget i kap. 1–2** efter den senaste bantningen. Templatesträngar och kortformer kommer nu där de hör hemma.

---

## 3. Genomgående iakttagelser

### 3.1 Övningarnas profil

Övningarna i Del I sorterade efter vad studenten gör (ungefärlig klassning, 92 övningar):

| Aktivitet | Antal | Andel |
|---|---|---|
| Skriva nytt från en beskrivning | ≈ 55 | ≈ 60 % |
| Förutsäga eller spåra | ≈ 14 | ≈ 15 % |
| Bygga vidare på befintlig kod | ≈ 12 | ≈ 13 % |
| Felsöka | ≈ 6 | ≈ 7 % |
| Förklara | ≈ 5 | ≈ 5 % |
| Parsons-problem | 0 | 0 % |

Kap. 11 (Arrayer) har elva övningar, och alla ber studenten skriva ny kod. Kap. 12 har en spårningsövning av sju.

**Förslag.** Sikta på ungefär hälften "läsa"-övningar (förutsäga, spåra, förklara, Parsons) och hälften "skriva"-övningar (modifiera, skriva nytt) i Del I, i stigande ordning inom varje kapitel. En konkret mall för ett kapitels övningar:

1. *Förutsäg* – vad skrivs ut / vad händer på sidan? (2–3 korta)
2. *Spåra* – fyll i en spårtabell för en loop eller en funktion
3. *Förklara* – "beskriv med en mening vad den här koden gör"
4. *Parsons* – ordna raderna, gärna med en distraktorrad
5. *Modifiera* – utgå från kapitlets exempel och ändra det
6. *Skriv* – ny uppgift i samma mönster
7. *Utmaning* – blandar kapitlets begrepp med tidigare kapitels

Det minskar också "copy-paste-fällan" som CLAUDE.md varnar för: det går inte att kopiera sig igenom en förutsägelse.

### 3.2 Mental modell av datorn

Pilmodellen från kap. 2 bör användas på nytt där nybörjare har kända missuppfattningar:

- **Kap. 4 Funktioner:** vad som händer vid ett anrop – argumentet blir parameterns värde, kroppen körs, `return` skickar tillbaka ett värde som ersätter anropet. En bild där parametern pekar på argumentets värde, och ett exempel på att lokala variabler försvinner när funktionen är klar.
- **Kap. 9–10 Villkor och loopar:** spårtabeller (en kolumn per variabel, en rad per varv). De gör "varför stannar loopen?" synligt och tränar den viktigaste färdigheten enligt §1 i PEDAGOGIK.md.
- **Kap. 11 Arrayer:** en array som en rad numrerade platser, med `poäng[0]` som pekar på första värdet.
- **Kap. 12 Objekt:** referenssemantiken (`a` och `c` pekar på samma objekt) är exakt det pilmodellen byggdes för. Bilden bör finnas där, och texten bör hänvisa tillbaka till kap. 2.

### 3.3 Tätheten i Del I

Forskningen om *learning edge momentum* och kognitiv belastning talar för att varje kapitel ska ha en kärna som befästs ordentligt, och att allt annat ska flyttas till det kapitel där det behövs. Kandidater att flytta till Del II/III, eller till en kortare "bra att veta"-ruta i slutet av kapitlet:

| Kapitel | Kandidat | Kommentar |
|---|---|---|
| 4 Funktioner | Funktionsuttryck (`const f = function …`) | Pilfunktioner behövs för callbacks i kap. 5, men tre sätt att skriva samma sak är många för en nybörjare. Övningen *Samma funktion, tre former* tränar syntax, inte förståelse. |
| 4 Funktioner | Standardvärden för parametrar | Behövs inte förrän senare |
| 8 Sant och falskt | Kortslutning; `&&` och `||` returnerar operander; standardvärden med `||` | En subtil regel som även erfarna programmerare snubblar på. Kan vänta till Del III, eller lösas med en `if`-sats i kap. 9. |
| 9 Villkor | `switch`, nästlade villkor, ternäroperatorn | Kapitlet har 27 underrubriker. `if`/`else if`/`else` räcker för Del I; ternär och `switch` är bekvämligheter. |
| 10 Loopar | `do...while`, `continue`, nästlade loopar | `while` och `for` (och `break`) räcker. Avsnittet *Vad är `[82, …]`?* förutsätter arrayer som kommer i nästa kapitel – överväg att vänta med loopar över listor till kap. 11. |
| 11 Arrayer | `splice`, `unshift`/`shift`, NodeList vs array | Kapitlet har 32 underrubriker – flest i boken. |
| 12 Objekt | `this` och pilfunktioner, `for...in` vs `Object.keys/values/entries`, hakparentesnotation | `this` hör hemma i OOP-kapitlet i Del III. |

Det är författarens beslut hur långt det ska gå. Även några få av flyttarna skulle göra Del I märkbart lättare att ta sig igenom.

### 3.4 Matematik i exempel och övningar

Exempel och övningar där svårigheten ligger i matematiken, med förslag på vardagliga ersättare:

| Plats | Nu | Förslag |
|---|---|---|
| Kap. 4, inledningen | Moms som faktor `* 1.25` | Fungerar om det förklaras i ord ("priset plus en fjärdedel"), annars kan t.ex. frakt (`pris + 49`) användas |
| Kap. 4, exemplet `kvadrat(x)` | Kvadrat med parameternamnet `x` | `dubbla(antal)` eller `hälsa(namn)` – och undvik `x` som namn, eftersom kap. 2 lär ut beskrivande namn |
| Kap. 4, övning *Skriv en funktion* | `cirkelArea(radie)` med formeln $A = \pi r^2$ | Tid för en film i timmar och minuter, pris för ett antal biljetter, eller en hälsning |
| Kap. 6, `%` | `15 = 3 × 4 + 3` | Förklara med vardagsexempel först: "135 minuter är 2 timmar och 15 minuter över" (finns redan, men efter den matematiska förklaringen) |
| Kap. 6, *Temperaturomvandlare* | $F = C \times \frac{9}{5} + 32$ med bråk i LaTeX | Ge formeln färdig i kod (`c * 1.8 + 32`) så att uppgiften handlar om inläsning och visning – eller byt till t.ex. kronor till euro |
| Kap. 6, *Dela notan* | Procentuell dricks | Fast dricks i kronor, eller förklara procent i ord |
| Kap. 9, *Hitta felet* (skottår) | Delbarhet i tre nivåer | Regeln är svår att förstå utan matematisk vana; t.ex. åldersgränser för biljettpriser ger samma villkorsstruktur |
| Kap. 10, *Summera en sekvens* | Summan 1 + … + n och Gauss formel | Summera en lista med utgifter eller poäng |
| Kap. 10, *FizzBuzz* | Delbarhet med `%` | Klassiker, men kräver att `%` sitter. Kan stå kvar som utmaning om `%` har övats ordentligt. |
| Kap. 10, *Multiplikationstabell* | Multiplikationstabell | Ett biljettpris för 1–10 personer ger samma loop med en vardaglig betydelse |

Kap. 6 *Tal* är i sig ett matematiknära kapitel. Det är rimligt att det finns, men det bör uttryckligen säga att vi bara använder vardagsräkning – och flyttal, `NaN` och avrundning bör motiveras med vad som syns på sidan (priser, poäng), som kapitlet redan till stor del gör.

### 3.5 Lösta exempel med delmål

Kap. 6 har ett komplett exempel (*momsräknaren*) och kap. 11–12 har större exempel (quiz, produktkort). Men stegen har sällan namn. Förslag: ett återkommande, namngivet mönster för interaktiva sidor, introducerat i kap. 5 och sedan använt i varje kapitel:

1. **Hämta** elementen (`querySelector`)
2. **Lyssna** efter en händelse (`addEventListener`)
3. **Läs** indata (`.value`)
4. **Bearbeta** (räkna, jämföra, bygga text)
5. **Visa** resultatet (`textContent`, `classList`)

I varje exempel markeras stegen med kommentarer (`// 1. Hämta`) och i övningarna kan studenten få stegen som stöd ("fyll i steg 4"). Forskningen om delmål visar störst effekt för just de studenter som annars riskerar att hoppa av.

### 3.6 Felmeddelanden

Kap. 1 introducerar felmeddelanden väl, och kap. 3 visar `null` när elementet inte finns. Därefter övas det sporadiskt. Förslag: en återkommande övningstyp, *Vad säger felet?*, i varje kapitel med kapitlets typiska fel – `TypeError: Cannot read properties of null` i kap. 3, `ReferenceError` och scope i kap. 4, `addEventListener` med `hälsa()` i kap. 5, `NaN` i kap. 6 och så vidare. En samlad tabell över de vanligaste felen kunde ligga som bilaga.

### 3.7 Repetition och blandade övningar

Övningar som bygger vidare på tidigare kapitels övningar finns redan (*Temperaturen* i kap. 9 bygger på kap. 6, *Knappar som vet sitt tillstånd* på kap. 5). Det är bra och bör bli systematiskt: varje kapitel kan ha en övning som uttryckligen blandar in begrepp från två–tre kapitel tillbaka, och kapitlen kan inledas med två–tre korta "minns du?"-frågor.

### 3.8 Språket som resurs

Forskningen om språkbegåvning (Prat m.fl. 2020) passar målgruppen, eftersom många studenter kommer från språk- och samhällsvetenskapliga utbildningar. Boken kan utnyttja det mer:

- Övningar som översätter mellan svenska och kod åt båda hållen (kap. 8 *Från ord till uttryck* är ett bra exempel).
- Att läsa kod högt: `poäng = poäng + 10` som "räkna ut poäng plus tio, och låt poäng vara det" (finns i kap. 2 och kan bli en återkommande vana).
- En ordlista över begrepp med svensk och engelsk term, eftersom felmeddelanden och MDN är på engelska.

---

## 4. Kapitel för kapitel – Del I

**Kap. 1 JavaScript och webbläsaren (≈ 4 200 ord).** Bra start: scenario, webbens tre språk, programmeringsspråk, konsolen, uttryck och satser, felmeddelanden. Överväg att flytta delar av *Att koppla JavaScript till en HTML-sida* (äldre `<script>` utan `type="module"`, `defer`) till kap. 3, där filer först behövs – kapitlet är nu ett av de längsta i Del I. Lägg till en mening om att programmering inte kräver matematik. *Övningen Konsolen som miniräknare* introducerar `%` och `**` – byt gärna till operatorer som studenten känner igen, eller gör `%` till en uttalad gåta som löses i kap. 6.

**Kap. 2 Värden och variabler (≈ 4 300 ord).** Nyss bantat. Kvar att överväga: tabellen över namnkonventioner (zoo-rutan) kunde kortas till camelCase och kebab-case. En spårtabell i övningen *Spåra poängen* skulle introducera verktyget som sedan används i kap. 10.

**Kap. 3 Din kod möter webbsidan (≈ 3 400 ord).** Konkret och motiverande. `innerHTML` med konkatenering blev klumpigt efter bantningen av kap. 2 – överväg att visa `innerHTML` med en fast sträng och lämna dynamisk HTML till kap. 7 eller Del II. Övningarna är nästan bara "skapa"/"bygg vidare": lägg till en förutsägelseövning ("vad visas på sidan?") och en *Vad säger felet?* med `null`.

**Kap. 4 Funktioner (≈ 3 700 ord).** Det mest begreppstäta kapitlet i början av boken: anrop, argument, returvärden, metoder, definition, parametrar, standardvärden, `return`, scope, funktioner som värden, funktionsuttryck och pilfunktioner. Förslag: fokusera på anrop, definition, parametrar, `return` och scope; behåll pilfunktioner (behövs i kap. 5) men flytta funktionsuttryck och standardvärden. Lägg in en bild av vad som händer vid ett anrop (§3.2). Byt ut `kvadrat(x)` och `cirkelArea` (§3.4).

**Kap. 5 Händelser (≈ 2 700 ord).** Lagom omfång och direkt användbart. Bra att *Parenteser eller inte?* får ett eget avsnitt – det är en klassisk nybörjarmiss. Bra kandidat för det namngivna mönstret *hämta → lyssna → läs → bearbeta → visa* (§3.5). Ett Parsons-problem med en händelselyssnare skulle passa här.

**Kap. 6 Tal (≈ 3 300 ord).** Inleds väl med en bugg (poängtavlan räknar fel). Matematiken bör hållas vardaglig (§3.4). `parseInt`/`parseFloat` och flyttalsavsnittet kan kortas – `Number()` och `toFixed()` räcker långt i Del I.

**Kap. 7 Strängar (≈ 2 800 ord).** Ett tydligt praktiskt kapitel. Metodöversikten är bred (`includes`, `startsWith`, `endsWith`, `indexOf`, `slice`, `replace`, `replaceAll`); överväg att lära ut färre metoder ordentligt och hänvisa till MDN för resten. Avsnittet om emojier och längd kan bli en ruta.

**Kap. 8 Sant och falskt (≈ 3 000 ord).** Jämförelser och logiska operatorer är kärnan. Kortslutning och att `&&`/`||` returnerar operander är ett abstrakt specialfall (§3.3). Övningarna *Förutsäg jämförelserna* och *Från ord till uttryck* är bra förebilder.

**Kap. 9 Villkorssatser (≈ 4 200 ord).** Ett av de längsta kapitlen i Del I, med flest övningar (11, delat med kap. 11). Ternär, `switch`, nästlade villkor och tangentbordshändelser i samma kapitel som `if` är mycket (§3.3). Skottårsövningen bör bytas (§3.4). *Refaktorera med funktioner* är en bra modifieringsövning.

**Kap. 10 Loopar (≈ 2 700 ord).** Kortfattat, men täcker `while`, `for`, `break`, `continue`, `do...while` och nästlade loopar. Spårtabeller saknas – de är det viktigaste verktyget för att förstå loopar (§3.2). Avsnittet om `[82, 91, …]` använder arrayer innan kap. 11. Tre övningar bygger på matematik (§3.4).

**Kap. 11 Arrayer (≈ 3 700 ord).** Flest underrubriker (32) och elva övningar, alla av typen "skriv nytt". Behöver förutsägelse-, spårnings- och Parsons-övningar. `splice`, `shift`/`unshift` och NodeList kan flyttas. *Hitta det största talet* och *Filtrera en lista* är bra uppgifter, men passar bättre som löst exempel och Parsons-problem än som första skrivövning.

**Kap. 12 Objekt (≈ 3 400 ord).** Bra avslutning som knyter ihop arrayer och objekt (produktkort). `this` och pilfunktioner samt de tre `Object.*`-metoderna kan vänta (§3.3). Referenssemantiken behöver pilbilden från kap. 2.

**Del I-sammanfattningen** (`del1-sammanfattning.qmd`) är 17 rader. Den kunde bli ett repetitionskapitel med blandade övningar från hela Del I – just den sortens spridda repetition som §8 i PEDAGOGIK.md beskriver.

---

## 5. Del II och Del III – på strukturnivå

Del II (sex kapitel) och Del III (fyra kapitel) är 2 700–3 900 ord per kapitel och har fem eller sex övningar vardera. Samma iakttagelser gäller i princip: övningarna är huvudsakligen "bygg"-uppgifter, och det saknas Parsons-problem och spårtabeller. Eftersom studenterna här har mer erfarenhet är en högre andel skrivövningar rimligare än i Del I.

Två saker att bevaka:

- **Del III (OOP, arv, moduler, destructuring) är abstrakt för målgruppen.** Kapitlen om klasser och arv har bara fem övningar vardera, och arv och polymorfism är svåra begrepp även för datavetenskapsstudenter. Fundera på vilka av kapitlen som faktiskt ingår i Webbteknik 2 och 3, och om något kan bli valfri fördjupning.
- **Kapitel som flyttas ur Del I** (§3.3) behöver ett hem. *Händelser på djupet*, *Moduler* och *OOP* är naturliga mottagare.

---

## 6. Förslag på arbetsordning

1. Lägg till en mening om matematik i kap. 1 och byt de matematikberoende exemplen (§3.4) – snabbt och tydligt.
2. Inför spårtabeller i kap. 2 och kap. 10, och pilbilden i kap. 4 och 12.
3. Gå igenom övningarna kapitel för kapitel enligt mallen i §3.1, och börja med kap. 11 och 4 där obalansen är störst.
4. Fatta beslut om flyttarna i §3.3, ett kapitel i taget. Kontrollera för varje flytt vilka senare kapitel som använder begreppet (som vi gjorde med templatesträngar och kortformer).
5. Inför det namngivna mönstret *hämta → lyssna → läs → bearbeta → visa* från kap. 5.

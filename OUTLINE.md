**Del I – Grunden: det du behöver för att komma igång**
*(kronologisk progression – omstruktureras, se [Omstrukturering av Del I](#omstrukturering-av-del-i) nedan)*

* Kap. 1 – JavaScript och webbläsaren
* Kap. 2 – Värden och variabler *(värden, datatyper i översikt, let/const, tilldelning, templatesträngar, typeof, uttryck och satser)*
* Kap. 3 – Din kod möter webbsidan *(querySelector, textContent, innerHTML, objekt och punktnotation, .style, classList, hidden)*
* Kap. 4 – Funktioner *(anropa, argument, returvärden, metoder, definiera, parametrar, scope, funktioner som värden)*
* Kap. 5 – Händelser *(addEventListener, callbacks, pilfunktioner, click, input, .value, change, mushändelser)*
* Kap. 6 – Tal *(aritmetik, Math, avrundning, slumptal, NaN, konvertering, läsa tal från formulärfält)*
* Kap. 7 – Strängar *(templatesträngar, escape, length, index, strängmetoder, kedjning)*
* Kap. 8 – Villkor *(booleska värden, jämförelser, logiska operatorer, truthy/falsy, if/else, ternär, switch, tangentbordshändelser)*
* Kap. 9 – Loopar
* Kap. 10 – Arrayer *(index, push/pop, sök, iterera, split/join, querySelectorAll, lyssnare i loopar, event.target)*
* Kap. 11 – Objekt *(objektliteraler, egenskaper, metoder, this, arrayer av objekt, nästlade objekt, Object.keys/values/entries, referenssemantik)*

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

**Appendix A** – HTML-referens: element och semantik
**Appendix B** – CSS-referens och layout

---

# Omstrukturering av Del I

## Varför

Kursen handlar om att göra webbsidor interaktiva *och* om grundläggande programmering. I den tidigare ordningen kom händelser först i kapitel 10, och övningarna i kapitel 4–9 byggde på mönstret "ändra variabeln och ladda om sidan". Den nya ordningen för in webbsidan (kap. 3), funktioner (kap. 4) och händelser (kap. 5) tidigt. Språkets byggstenar – tal, strängar, villkor, loopar, arrayer och objekt – lärs sedan ut genom interaktiva exempel.

Omstruktureringen löser samtidigt flera punkter i [REVIEW-DEL1.md](REVIEW-DEL1.md): strängar får ett eget kapitel, överlappet mellan gamla kap. 2 och 3 försvinner, objekt introduceras där de faktiskt möts (DOM-element), och de upprepade temperaturövningarna kan slås ihop.

Hänvisningar nedan använder den **gamla** numreringen: `g2` = gamla kapitel 2 (`kap02-variabler.qmd`), `g2 §Variabler` = avsnittet *Variabler* i det kapitlet, `Ö 5.3` = gamla övning 5.3.

## Översikt

| Nytt kapitel | Fil (förslag) | Byggs av | Ny text | Uppskattad längd |
|---|---|---|---|---|
| 1 JavaScript och webbläsaren | `kap01-om-javascript.qmd` | g1 | – | ≈ 3 000 ord (oförändrat) |
| 2 Värden och variabler | `kap02-variabler.qmd` | g2 (bantat) | lite | ≈ 2 500 |
| 3 Din kod möter webbsidan | `kap03-dom.qmd` | g4 + g6 + g2 §Objekt | lite | ≈ 3 800 |
| 4 Funktioner | `kap04-funktioner.qmd` | g3 + g9 | en del | ≈ 3 500 |
| 5 Händelser | `kap05-handelser.qmd` | g10 (första halvan) + g9 §Pilfunktioner | lite | ≈ 2 500 |
| 6 Tal | `kap06-tal.qmd` | g2 + g3 | **mycket** | ≈ 2 500 |
| 7 Strängar | `kap07-strangar.qmd` | g2 + g3 | **mycket** | ≈ 2 500 |
| 8 Villkor | `kap08-villkor.qmd` | g5 + g2 + g6 + g9 + g10 | en del | ≈ 5 000 (se beslut 3) |
| 9 Loopar | `kap09-loopar.qmd` | g7 | lite | ≈ 2 500 |
| 10 Arrayer | `kap10-arrayer.qmd` | g8 + g10 (andra halvan) | lite | ≈ 3 500 |
| 11 Objekt | `kap11-objekt.qmd` | g11 | minimal | ≈ 3 500 |

Filerna flyttas med `git mv` så att historiken följer med. Två gamla filer försvinner: `kap03-anropa-funktioner.qmd` (går upp i nya kap. 4) och `kap06-stil.qmd` (går upp i nya kap. 3).

## Kapitel för kapitel

### Kap. 1 – JavaScript och webbläsaren *(g1)*

Nästan oförändrat.

- §En förhandsvarning om okänd syntax: säg att funktionsanrop förklaras i kap. 4 och webbsidan i kap. 3 (tidigare tvärtom).
- §Vad är programmering?: hänvisningarna (beslut → villkor, upprepning → loopar, återanvändbara delar → funktioner) uppdateras automatiskt, men kontrollera att meningen stämmer med ordningen.
- Ö 1.1 *Konsolen som miniräknare*: hänvisningen till `%` och `**` ska peka på kap. 6 (`sec-tal`) i stället för kap. 2.

### Kap. 2 – Värden och variabler *(g2, bantat)*

Ett generellt kapitel om *värden* och *variabler*. Detaljerna om varje datatyp flyttar till egna kapitel.

**Behålls från g2**

- §En quizkväll att programmera (scenario)
- §Vad är ett värde?
- §Primitiva datatyper – **kortas** till en översikt: ett stycke var om `number`, `string`, `boolean`, `null`, `undefined`, med framåthänvisningar till kap. 6, 7 och 8
- §Tomma värden: `null` och `undefined` (kortad; `null` återkommer i kap. 3 när `querySelector` inte hittar något)
- §Templatesträngar – grunderna (behövs redan i kap. 3); fördjupning i kap. 7
- §Variabler, §Deklarera med `let`, §Konstanter med `const`, §Vad hände med `var`?
- §Namngivning av variabler, §Namnkonventioner
- §Operatorn `typeof`
- §Dynamisk typning – bara själva idén (en variabel kan byta typ); konverteringsdetaljerna flyttar
- §Uttryck och satser

**Flyttas hit**

- g7 §`i++` och `i += 1` (rutan) → nytt avsnitt *Ändra en variabel stegvis*. Behövs för räknaren i kap. 5.

**Flyttas ut**

| Avsnitt | Till |
|---|---|
| §Tal – `number`, §Aritmetiska operatorer, §Specialvärden: NaN och Infinity, MDN-rutan | kap. 6 |
| §Sanningsvärden – `boolean` (jämförelser, logiska operatorer), rutan `null` vs `undefined` | kap. 8 |
| §Text – `string`: §Konkatenering, §Escape-sekvenser, §Stränglängd och grundläggande strängoperationer | kap. 7 |
| §Objekt – en första bekantskap, §Punktnotation | kap. 3 |
| §Implicit konvertering | kap. 6 |
| §Explicit konvertering: `Number()` → kap. 6, `String()` → kap. 7, `Boolean()` och truthy/falsy → kap. 8 | kap. 6–8 |

**Övningar**

- Behålls: Ö 2.1 *Typa värdena*, Ö 2.3 *Quizprogrammets variabler*, Ö 2.4 *Namnge rätt*, Ö 2.5 *Templatesträngar*
- Flyttas: Ö 2.2 *Förutsäg resultaten* (typkonvertering) → kap. 6
- Ny: en övning med `+=`/`++` (spåra värdet på en poängvariabel)

### Kap. 3 – Din kod möter webbsidan *(g4 + g6 + g2 §Objekt)*

Allt som handlar om att ändra *vad användaren ser* – text, HTML, stil, klasser, visa och dölja – samlat i ett kapitel. Här finns ännu inga egna funktioner eller villkor. `querySelector` presenteras som ett anrop vars mekanik förklaras i kap. 4 (som kap. 1 redan gör).

**Från g4 (hela kapitlet)**

- §Från konsolen till sidan, §Webbsidan som en modell
- §Hämta ett element med `querySelector`, §CSS-selektorer som du redan kan, rutan om `null`
- §Ändra text med `textContent`, §Infoga HTML med `innerHTML`, §När ska du använda vilket?, säkerhetsvarningen
- §En mall att utgå från, §`console.log()` lever kvar

**Från g2**

- §Objekt – en första bekantskap + §Punktnotation, **omskrivet** så att exemplen är `document`, ett DOM-element och `console` i stället för det odefinierade `lag` (löser review-punkten om `lag.namn`). Placeras direkt efter §Hämta ett element: "elementet du fick tillbaka är ett *objekt*".

**Från g6**

- §Ändra stil med `.style`, §Flera stilar samtidigt
- §CSS-klasser med `classList`: `add`, `remove`, `toggle` (även med andra argumentet), `contains` (presenteras som "svarar `true` eller `false`" – används i kap. 8)
- §`.style` eller `classList` — när väljer du vad?
- §Visa och dölja element: §Egenskapen `hidden`, §Dölja med CSS-klass, rutan *`hidden` eller CSS-klass?* (inkl. fallgropen med `display`)

**Flyttas ut**

- g6 §Visa och dölja med villkor, exemplen med godkänd/underkänd i `if`-satser → kap. 8
- Inledningsscenariot i g6 ("en sida som ser likadan ut …") bygger på villkor → används i kap. 8

**Övningar**

- Behålls: Ö 4.1–4.5 (alla g4-övningar; hänvisningen "kapitel 2, övning 2.5" stämmer fortfarande), Ö 6.4 *`.style` vs `classList`*, Ö 6.6 *Mörkt läge* (med boolesk variabel – blir en knapp i kap. 5)
- Flyttas till kap. 8: Ö 6.1 *Betyg med färgkodning*, Ö 6.2 *Temperatur med visuell respons*, Ö 6.3 *Villkorligt hjälpmeddelande*, Ö 6.5 *Quiz med visuell feedback*
- Ny: visa/dölj ett facit-element med `hidden` (förbereder "Visa svar"-knappen i kap. 5)

### Kap. 4 – Funktioner *(g3 + g9)*

Ett kapitel om funktioner från början till slut: först att *anropa* (det studenterna redan gjort med `querySelector` och `console.log`), sedan att *definiera* egna. Exemplen klarar sig utan villkor.

**Från g3**

- §Poängtavlan behöver hjälp → **skrivs om**; scenariot om avrundning och slumptal passar bättre i kap. 6. Förslag: inled med g9 §Att sätta namn på en beräkning (moms) eller med quizets poängtavla.
- §Du har redan använt funktioner (nu med `querySelector` och `classList.add` som exempel)
- §Vad är en funktion?, §Funktionsanropet, §Returvärden
- §Metoder — funktioner på objekt (exempel: `document.querySelector`, `element.classList.add`)
- §Funktionsanropet som uttryck

**Från g9**

- §Att sätta namn på en beräkning, §Från att använda till att skapa
- §Att definiera en funktion, §Parametrar och argument, §Standardvärden för parametrar, §Returvärden
- §Scope – variablers räckvidd, rutan *Håll variabler lokala* (behövs för räknaren i kap. 5)
- §Funktionsuttryck och pilfunktioner – **bara första stycket** (funktioner är värden) + §Funktionsuttryck; pilfunktioner flyttar till kap. 5 (se beslut 2)
- §Att tänka i funktioner

**Nytt**

- Avsnitt *Funktioner som uppdaterar sidan*: `function visaPoäng(poäng) { … textContent … }` – bron till kap. 5 (idén finns i Ö 9.6)

**Flyttas ut**

| Avsnitt | Till |
|---|---|
| g3 §Inbyggda funktioner: §Typkonvertering, §Math-objektet | kap. 6 |
| g3 §Kedja metoder | kap. 7 |
| g9 §Funktioner med villkorssatser, §Early return | kap. 8 |
| g9 §Pilfunktioner, rutan *Vilken form ska jag använda?* | kap. 5 |

**Övningar**

- Behålls: Ö 9.1 *Spåra exekveringen*, Ö 9.2 *Skriv en funktion* (`cirkelArea`, använder `Math.PI` – förklara kort eller flytta till kap. 6), Ö 9.4 *Hitta scope-felet*, Ö 9.6 *Funktioner som uppdaterar sidan* (utan färgdelen, som kräver villkor)
- Flyttas: Ö 3.1 *Vad returneras?*, Ö 3.2 *Tärningskast*, Ö 3.5 *Hitta rätt funktion* → kap. 6; Ö 3.3 *Metoder i kedja*, Ö 3.4 *Egenskaper eller metoder?* → kap. 7; Ö 9.3 *Funktioner med villkorssatser*, Ö 9.5 *Refaktorera med funktioner* → kap. 8
- Ny: en egen funktion som tar ett element och en text och uppdaterar sidan; en övning om parameter vs argument

### Kap. 5 – Händelser *(g10, första halvan)*

Den stora vändpunkten: från här är alla exempel interaktiva.

**Från g10**

- §En knapp som inte reagerar, §Vad är en händelse?, §`addEventListener`
- §Callback-funktioner – **ny ordning**: §Namngiven funktion först, sedan rutan *Parenteser eller inte?*, sedan §Anonym funktion och §Pilfunktion
- §Från konsol till sida, §En räknare (använder `++` från kap. 2 och scope från kap. 4), §Mörkt läge — äntligen (bygger på Ö 6.6 i kap. 3)
- §Event-objektet – bara `event.type` och idén (se beslut 4)
- §Mushändelser, rutan om hover i CSS eller JavaScript
- §Input-händelser, rutan *`.value`, inte `.textContent`*, §`change`-händelsen – med en framåthänvisning: "`.value` är alltid en sträng – vill du räkna med den behöver du kap. 6"
- §Flera lyssnare på samma element

**Från g9**

- §Pilfunktioner + rutan *Vilken form ska jag använda?* – här finns ett naturligt behov av korta funktioner

**Flyttas ut**

| Avsnitt | Till |
|---|---|
| §Tangentbordshändelser, §Reagera på specifika tangenter, rutan *Vanliga tangentnamn* (behöver `if`) | kap. 8 |
| §`event.target`, §Händelser och arrayer, §Ett interaktivt quiz (behöver `querySelectorAll` och loopar) | kap. 10 |

**Övningar**

- Behålls: Ö 10.1 *Knappräknare* (första delen), Ö 10.7 *Spåra exekveringen*, Ö 10.2 *Mörkt läge* steg 1 och 3 (steg 2, knappens text, kräver villkor → kap. 8)
- Flyttas: Ö 10.1 andra delen ("aldrig under 0") → kap. 8; Ö 10.3 *Tangentbordsrörelser* → kap. 8; Ö 10.4 *Live-sökning*, Ö 10.5 *Interaktivt quiz*, Ö 10.6 *Färgväljare* → kap. 10
- Nya: "Visa svar"-knapp som tar bort `hidden` från facit; en textruta vars innehåll speglas i en rubrik medan man skriver; `mouseenter`/`mouseleave` som markerar kort

### Kap. 6 – Tal *(nytt kapitel; material från g2 och g3)*

**Scenario (förslag):** quizets poängtavla ska visa procent rätt och ett slumpat frågenummer, och poängen läses från ett inmatningsfält – där `"10"` inte är `10` (idén från g3 §Poängtavlan behöver hjälp).

**Från g2**

- §Tal – `number`, §Aritmetiska operatorer (inkl. beräkningsordning och modulo), §Specialvärden: NaN och Infinity, MDN-rutan
- §Implicit konvertering – nu med ett verkligt sammanhang: `fält.value + 1`
- §Explicit konvertering – delen om `Number()`

**Från g3**

- §Typkonvertering: `Number`, `parseInt`, `parseFloat`
- §Math-objektet: avrundning, `max`/`min`, `abs`, `random`, konstanter
- Tärningsexemplet från §Returvärden och §Funktionsanropet som uttryck

**Nytt**

- Läsa tal från formulärfält: `Number(fält.value)`, även `type="number"` ger en sträng
- Visa tal snyggt: `toFixed`, avrundning för visning kontra beräkning
- Flyttalsprecision: `0.1 + 0.2`
- Framåthänvisning: att *kontrollera* om inmatningen är ett giltigt tal kräver villkor (kap. 8)

**Övningar**

- Från: Ö 2.2 *Förutsäg resultaten*, Ö 3.1 *Vad returneras?*, Ö 3.2 *Tärningskast*, Ö 3.5 *Hitta rätt funktion*
- Nya, interaktiva: momsräknare med fält och knapp; tärningsknapp; temperaturomvandlare Celsius → Fahrenheit (startpunkten för temperaturtråden som fortsätter i kap. 8)

### Kap. 7 – Strängar *(nytt kapitel; material från g2 och g3)*

Ger strängarna det egna kapitel som g2 lovade.

**Scenario (förslag):** användaren skriver in sitt lagnamn som `"  räknenissarna  "` – det ska rensas, visas med stor bokstav och inte få vara för långt.

**Från g2**

- §Text – `string`, §Konkatenering, §Templatesträngar (fördjupning: uttryck inuti `${}`, flera rader), §Escape-sekvenser, §Stränglängd och grundläggande strängoperationer
- §Explicit konvertering – delen om `String()`

**Från g3**

- §Metoder — funktioner på objekt – strängexemplen (`toUpperCase`, `trim`, `includes`, `startsWith`)
- §Kedja metoder

**Nytt**

- Index och enskilda tecken (`text[0]`, `at(-1)`)
- `toLowerCase`, `indexOf`, `slice`, `replace`/`replaceAll`
- Strängar går inte att ändra: metoder returnerar en *ny* sträng
- Interaktivt: `input`-händelsen + `length` → teckenräknare

**Flyttas ut:** `split` och `join` väntar till kap. 10, eftersom `split` returnerar en array.

**Övningar**

- Från: Ö 3.3 *Metoder i kedja*, Ö 3.4 *Egenskaper eller metoder?*
- Nya, interaktiva: teckenräknare för en textruta; initialer ur för- och efternamn; förhandsvisning som trimmar och formaterar texten medan man skriver

### Kap. 8 – Villkor *(g5 + delar av g2, g6, g9, g10)*

Booleska värden och deras operatorer flyttar hit, som du föreslog. Kapitlet heter *Villkor*.

**Scenario:** behåll g5 §Programmet som fattar beslut (betygsprogrammet) – men nu med ett inmatningsfält och en knapp, så att färgen kan sättas direkt (den gamla framåthänvisningen till kap. 6 försvinner).

**Del 1 – Sant och falskt**

- g2 §Sanningsvärden – `boolean` (typen, George Boole)
- g5 §Jämförelseoperatorer, §Strikt jämförelse, §Jämförelse av strängar; rutan `null` vs `undefined` från g2
- g5 §Logiska operatorer, §`&&`, §`||`, §`!`, §Kortslutningsutvärdering
- g5 §Truthy och falsy + g2 §Explicit konvertering (delen om `Boolean()`), stycket om att `&&`/`||` returnerar operander

**Del 2 – Villkorssatser**

- g5 §`if`-satsen, rutan *Indentering*, §`else`, §`else if`, rutan *Ordningen spelar roll*
- g5 §Ternäroperatorn, §`switch`-satsen, §Nästlade villkor
- g9 §Funktioner med villkorssatser, §Early return (funktioner finns ju redan nu)

**Del 3 – Villkor på webbsidan**

- g6 inledningsscenario och §Visa och dölja med villkor; godkänd/underkänd-klasserna; `classList.contains` i villkor; `toggle(namn, villkor)` som alternativ till `if`/`else`
- g10 §Tangentbordshändelser, §Reagera på specifika tangenter (rutan som flyttas), rutan *Vanliga tangentnamn*
- Nytt: enkel validering av inmatning – tomt fält, `Number.isNaN` för ogiltiga tal (följer upp kap. 6)

**Övningar** – här finns många kandidater; välj och slå ihop:

- Från g5: Ö 5.1 *Spåra exekveringen*, Ö 5.2 *Hitta felet* (skottår), Ö 5.3 *Formulera villkoren*, Ö 5.4 *`if/else` eller ternär?*, Ö 5.5 *Logiktabellen*, Ö 5.6 *Betyg på sidan*
- **Temperaturtråden:** slå ihop Ö 5.7, Ö 6.2 och Ö 9.3 till *en* progressiv övning: funktion `klassificera(temperatur)` → visa text → lägg till CSS-klass → läs temperaturen från ett fält (bygger vidare på omvandlaren i kap. 6)
- Från g6: Ö 6.1 *Betyg med färgkodning* (kan slås ihop med Ö 5.6), Ö 6.3 *Villkorligt hjälpmeddelande*, Ö 6.5 *Quiz med visuell feedback* (nu med textfält och knapp)
- Från g9: Ö 9.5 *Refaktorera med funktioner*
- Från g10: Ö 10.1 andra delen (räknaren får inte gå under 0), Ö 10.2 steg 2 (knappens text), Ö 10.3 *Tangentbordsrörelser*

### Kap. 9 – Loopar *(g7)*

I stort sett oförändrat.

- Rutan §`i++` och `i += 1` ersätts av en kort påminnelse (flyttad till kap. 2)
- §`break` använder fortfarande en array före arraykapitlet, som tidigare – rutan *Vad är `[82, 91, …]`?* behålls
- §`do...while`: `prompt` är ett udda inslag när studenterna redan kan läsa från formulärfält – överväg ett annat exempel
- Övningar: gör några interaktiva – Ö 7.6 *Nedräkning på sidan* och Ö 7.7 *FizzBuzz på sidan* kan läsa `n` från ett fält. Ny: multiplikationstabell för ett tal som användaren anger. Hänvisningen "(7.3)" i Ö 7.7 ändras till nya numret.

### Kap. 10 – Arrayer *(g8 + andra halvan av g10)*

**Från g8:** hela kapitlet.

**Från g10**

- §`event.target` (färgknapparna) – placeras efter §Arrayer och DOM: `querySelectorAll`
- §Händelser och arrayer (lyssnare i en loop)
- §Ett interaktivt quiz – kapitlets avslutande exempel

**Nytt**

- `split` och `join` (flyttat från strängkapitlet), med ett interaktivt exempel: en kommaseparerad lista i ett textfält blir en lista på sidan

**Övningar**

- Från g8: alla (Ö 8.6 kan byta `.style.backgroundColor` mot en CSS-klass)
- Från g10: Ö 10.4 *Live-sökning*, Ö 10.5 *Interaktivt quiz*, Ö 10.6 *Färgväljare* (se beslut 5 om `dataset`)

### Kap. 11 – Objekt *(g11)*

Minimala ändringar.

- §En student är mer än ett namn: "Redan i kapitel 2 fick du en första bekantskap" → kap. 3
- Ö 11.3 och Ö 11.7 upprepar Live-sökningen från kap. 10 – gör den ena till en uttalad vidareutveckling ("Gå tillbaka till övning 10.x …")

## Följdändringar

- **`_quarto.yml`:** ny kapitellista i Del I.
- **Kapitel-id:** behåll `sec-om-javascript`, `sec-variabler`, `sec-dom-intro`, `sec-funktioner`, `sec-handelser`, `sec-villkor`, `sec-loopar`, `sec-arrayer`, `sec-objekt`. Nya: `sec-tal`, `sec-strangar`. Två försvinner:
  - `sec-anropa-funktioner` → ersätts med `sec-funktioner` (används i `kap01:95`, `kap09:5`, `kap09:71`)
  - `sec-stil` → ersätts med `sec-dom-intro` (används i `kap10:182`, `kap10:203`)
- **Korsreferensernas riktning:** numren uppdateras automatiskt, men *formuleringarna* gör det inte. "Som du lärde dig i kapitel X" kan bli fel när X nu kommer efter, till exempel g9:s "Det betygsprogram vi byggde i kapitel 5". Gå igenom alla `[-@sec-…]` i Del I efter omarbetningen.
- **Handskrivna övningsnummer** (genereras av filtret och följer inte med automatiskt):
  - `kap04:276` "övning 2.5" (stämmer fortfarande), `kap04:282` "övning 4.2" (blir 3.x)
  - `kap07:391` "(7.3)" (blir 9.x)
  - `kap01:330` "övning 1.3" (oförändrad)
  - **Del II:** `kap-dom-traversering:373` hänvisar till "övning 10.6" (Färgväljaren) – blir 10.x i det nya arraykapitlet
- **Del II/III om Del I:** `kap-dom-traversering` påstår att kap. 10 introducerade `data-`-attribut och `dataset` (se beslut 5).
- **`del1-sammanfattning.qmd`:** beskrivningen av de två spåren stämmer fortfarande; kontrollera "I elva kapitel".
- **`CLAUDE.md`:** uppdatera raden om Del I under *Content Plan*.
- **AI-rutor:** de nya kapitlen 6 och 7 behöver egna; kap. 3, 4 och 8 behöver sammanslagna.
- **Sammanfattningar och kapitelövergångar:** varje kapitels "I nästa kapitel …" skrivs om.

## Beslut att fatta

1. **Stil i DOM-kapitlet eller eget kapitel?** Förslaget slår ihop g4 och g6 till kap. 3 (≈ 3 800 ord). Alternativet är ett eget stilkapitel som kap. 4, men då kommer händelser först i kap. 6.
2. **Var introduceras pilfunktioner?** Förslaget: i kap. 5, där callbacks ger dem ett syfte. Alternativ: i kap. 4 tillsammans med funktionsuttryck.
3. **Är *Villkor* för stort?** Med tre delar blir det ≈ 5 000 ord. Det kan delas i *Sant och falskt* (del 1) och *Villkor* (del 2–3), men då blir Del I tolv kapitel.
4. **`event.target` i kap. 5 eller kap. 10?** Förslaget: kap. 10, där det behövs (en lyssnare per element i en loop). I kap. 5 räcker `event.type` och idén om ett händelseobjekt.
5. **`dataset`:** introducera `data-`-attribut kort i kap. 10 (så att Ö 10.6 och påståendet i `kap-dom-traversering` stämmer), eller ändra övningen så att den använder `value` som exemplet i kapitlet?
6. **En röd tråd?** Quizet finns redan i flera kapitel och kan växa genom hela Del I:
   - kap. 2: variabler för lag och poäng
   - kap. 3: poängtavlan på sidan
   - kap. 4: funktionen `visaPoäng`
   - kap. 5: knappar som ger poäng
   - kap. 6: procent rätt
   - kap. 7: rensat lagnamn
   - kap. 8: rätt/fel-feedback
   - kap. 9–10: flera frågor i en array
   - kap. 11: frågor som objekt

   Det kräver fler omskrivna exempel men ger ett starkt sammanhang. Ett mellanläge är att använda quizet i kapitlens inledningar och låta övningarna variera.

## Föreslagen arbetsordning

Varje steg blir ett eget kapitel att granska innan nästa påbörjas.

1. Kap. 2 (bantning) och kap. 3 (sammanslagning) – de är förutsättningar för resten.
2. Kap. 4 (sammanslagning av g3 och g9).
3. Kap. 5 (g10 delas).
4. Kap. 6 och 7 (nya kapitel – mest ny text).
5. Kap. 8 (sammanslagning från fem källor).
6. Kap. 9–11 (mindre justeringar).
7. Följdändringar: `_quarto.yml`, korsreferensernas formuleringar, övningsnummer, sammanfattning av Del I, `CLAUDE.md`.

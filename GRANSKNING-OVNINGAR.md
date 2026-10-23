# Granskning av övningarna i Del I

Rapporten listar de frågor och övningar som ändrades när lösningsförslagen till kapitel 1–11 skrevs. Lösningarna ligger i `manuscript/losn01-…` till `manuscript/losn11-…`, i en egen del (*Lösningar*) längst bak i boken. Övningsnumren i lösningarna sätts av filtret `filters/number-exercises.lua` (via `losningar-till:` i filens front matter), så de följer med om övningar läggs till eller flyttas. Rubrikerna "Kapitel N:" i lösningsfilerna är däremot skrivna för hand.

Varje punkt anger övningen, vad som var problemet och vad som ändrades. Övningsnumren är de som gäller *efter* ändringarna.

## Sammanfattning

Alla 116 övningar och 31 Stanna upp-rutor i kapitel 1–11 har lösts. Omkring 25 frågor ändrades. De flesta ändringarna är små: en fråga i singular som har flera svar, en hänvisning som saknade namn, ett element som saknades på övningssidan. De viktigaste:

1. **Övning 4.7 förutsatte en förklaring som kapitel 4 saknar** – varför ett skript i `<head>` utan `type="module"` misslyckas, och vad `defer` är. Det är avsiktligt utelämnat, så övningen är ersatt av en övning om skillnaden mellan HTML-koden och DOM:en.
2. **Övning 9.8 (Tangentbordsrörelser) gick inte att lösa på det naturliga sättet** på grund av CSS-specificitet (`#ruta` slår `.klass`). Tips tillagt, och övningen är flyttad så att numren i kapitel 9 har ändrats.
3. **Övning 5.6 (Byt insidan) fråga 4 var cirkulär** och tvetydig. Omskriven.
4. **Övning 3.8 (Quizets topplista)** ledde rakt in i `NaN poäng` utan förklaring. Tips om parenteser tillagt.
5. **Namnet `inträde` i kapitel 5** betydde först ett pris och sedan en funktion. Det andra heter nu `kostnad`.

**Att ta ställning till (inte ändrat):** övning 10.10 *Frågornas typer* bygger på modulo, som CLAUDE.md säger att boken ska undvika. Se kapitel 10 nedan.

## Kapitel 1 – JavaScript och webbläsaren

- **1.2 Utforska DevTools**, fråga 3: "Vad returneras?" – ordet *returnera* introduceras först i kapitel 3. Ändrat till "Vad svarar konsolen?", plus en uppmaning att jämföra med fliken så att frågan får en poäng. Även språkfel i slutfrågan: "Vad hade behövts förändras" → "Vad hade behövt ändras".
- **1.4 Uttryck eller sats?**: frågan "Är raden ett uttryck eller en sats?" krockade med texten, som säger att en rad som `2 + 2;` *också* räknas som en sats. Frågan formuleras nu som kapitlets tumregel: ger raden ett värde, eller gör den något utan att ge ett värde tillbaka?
- **1.6 Läs koden innan du kör den**, steg 4: "Klistra in raden" – Chrome blockerar inklistring i konsolen för nya användare tills man skriver `allow pasting`, så studenten fastnar på första försöket. Ändrat till "Skriv in raden", med en kort förklaring av spärren.

## Kapitel 2 – Värden och variabler

- **2.7 Ordna raderna**, fråga 2: "Spelar det någon roll i vilken ordning de två första raderna i ditt program står?" – vilka rader som kommer först beror på studentens lösning. Börjar hen med `let poäng = 5;` och `poäng = poäng + 10;` spelar ordningen stor roll, och frågan får fel svar. Omformulerad till om raden med `lagnamn` kan stå före eller efter raderna med `poäng`, och vilka rader som *måste* stå i en viss ordning.

## Kapitel 3 – Att använda funktioner

- **3.2 Inifrån och ut**: tabellen hade kolumnen *Anrop*, men flera steg är inga anrop (läsa `lag.namn`, slå ihop text). Kapitlets egen tabell har kolumnerna *Vad som räknas ut* / *Raden ser nu ut så här*, och övningens tabell har nu samma. Det framgår också att det är de två raderna med `console.log` som ska följas, en tabell per rad.
- **3.5 Förklara koden**, fråga 2: "Vilket returvärde tar ingen hand om?" stod i singular, men både `alert` och `console.log` returnerar `undefined` som ingen tar hand om. Omformulerad.
- **3.7 Slå upp en funktion**: fråga 2 ledde till `Math.min(4, "hej", 9)`, som ger `NaN` – ett nytt begrepp som inte förklaras förrän i kapitel 7. Övningen slår nu i stället upp `prompt`, som kapitlet redan har tagit upp. MDN-sidan förstärker då det studenten redan vet (två argument i bestämd ordning, returvärdet text eller `null`) i stället för att introducera något nytt.
- **3.8 Quizets topplista**, fråga 2: den naturliga lösningen `"Skillnad: " + Math.max(…) - Math.min(…) + " poäng"` ger `NaN poäng`, eftersom `+` och `-` räknas från vänster. Kapitlet tar inte upp detta, så studenten fastnar utan att förstå varför. Lagt till ett tips om parenteser.

## Kapitel 4 – Din kod möter webbsidan

- **4.7 Var ska skriptet stå?** – övningen byggde på att studenten förstår varför ett skript i `<head>` utan `type="module"` misslyckas, och frågade om `defer`, men inget av det förklaras i kapitlet. Det är avsiktligt utelämnat för att hålla det enkelt, så **övningen är ersatt** av *Ritningen och huset*: studenten ändrar rubriken med ett skript och jämför fliken *Elements* (DOM:en) med sidans källkod (HTML-filen). Övningen knyter an till kapitlets egen bild, ritningen och huset, och använder bara sådant som redan har tagits upp. Även meningen i kapitel 1 som lovade att kapitel 4 skulle förklara varför skriptets placering spelar roll är borttagen.
- **4.5 Förklara koden**: koden lägger till klassen `vinnare`, men utan CSS för klassen märker besökaren ingenting, och frågan gäller just vad besökaren märker. Lagt till att sidans CSS har en klass `.vinnare`.
- **4.10 Facit som döljs**: "i kapitel 6 lägger du till en knapp som visar facit" – ingen sådan övning finns i kapitel 6. Ändrat till en uppmaning: "När du har läst kapitel 6 kan du lägga till en knapp som visar facit."
- **4.11 Från konsol till sida**: hänvisade till "den övningen" i kapitel 2 utan att nämna den. Lagt till namnet (*En quizfråga som objekt*).
- **4.12 Mörkt läge**: ber om "anpassade länkfärger" men sidan skulle bara ha rubrik och stycken. Lagt till en länk i innehållet.
- **AI-rutan** (ej övning): förslaget "markera alla vegetariska rätter" kräver `querySelectorAll` och loopar, som inte finns i kapitlet. Ändrat till "markera dagens rätt".
- *(Tidigare i sessionen)* **4.1 Vad visas på sidan?**: övningen använde `#lag` medan övningssidan har `#lagnamn`, så "Testa sedan" gav ett `TypeError`. Ändrat till `#lagnamn`.

## Kapitel 5 – Egna funktioner

- **Brödtext, avsnittet *Funktioner är värden***: exemplet `const inträde = biljettpris;` återanvände namnet `inträde`, som i avsnittet om scope just betydde inträdesavgiften (`const inträde = 40;`). Avsnittet *Att tänka i funktioner* hänvisar sedan till `inträde` som priset igen. Ett namn för ett pris som plötsligt pekar på en funktion är förvirrande, och skriver studenten båda exemplen i samma fil blir det ett `SyntaxError`. Aliaset heter nu `kostnad` (i koden, diagrammen och Stanna upp-rutan).
- **5.5 Förklara koden**: funktionen `visaLedare` visar bara den högsta *poängen*, inte vilket lag som leder – namnet är missvisande, precis det som avsnittet *Bra namn* varnar för. Studenter som tar namnet på allvar svarar fel på fråga 1. Ny fråga 4 som gör det till en poäng: stämmer namnet?
- **5.6 Byt insidan**: inledningen "Ett quiz visar vad ett lag ska betala" var obegriplig. Den knyter nu an till inträdet på 40 kronor från avsnittet om `return` (åtgärdat tidigare i sessionen). Fråga 4 var cirkulär: den bestämde att priset skulle bli ett argument och frågade sedan varför det inte räckte att ändra insidan. Dessutom var "funktionen" tvetydigt (det finns två), och svaret på "vilka rader" berodde på om `visaPris` också får priset – vilket inte nämndes. Omskriven: `biljettpris(antal, prisPerPerson)` anges uttryckligen, frågan är varför det är en ändring av *utsidan*, och den påpekar att `visaPris` också måste få priset.
- *(Tidigare i sessionen)* Rutan *Så provar du koden* skickade studenten till `script.js` i kapitel 4:s mapp. Nu skapar studenten en egen mapp, `kap05`, genom att kopiera `kap04` eller börja om med samma HTML. Hänvisningar till "övningssidan" i 5.6, 5.11 och övningsinledningen är justerade.

## Kapitel 6 – Händelser

- **6.10 Poängtavlan blir interaktiv**, fråga 2: "Vilken knapp behöver inget *läs*-steg?" stod i singular, men både *Rätt svar* och *Börja om* saknar läs-steg. Ändrat till "Vilka knappar … och varför?".
- *(Tidigare i sessionen)* **6.2 Vad händer vid klicket?**: `#antal` beskrevs som "ett stycke", men på övningssidan är det ett `<span>`. Ändrat till "ett element".

## Kapitel 7 – Tal och text

- **7.12 Poängtavlan räknar rätt**, fråga 3: "Lägg till ett textfält där domaren kan skriva lagets namn" – poängtavlan från 6.10 har redan ett textfält och en Spara-knapp för namnet. Omformulerad till att namnet från det befintliga fältet ska städas med `trim`. Planeringsfrågan "vilket av de fem stegen är nytt?" hade inget bra svar, eftersom alla fem stegen fanns i kapitel 6. Det som faktiskt är nytt är att knappen *Lägg till* har ett *läs*-steg, vilket *Rätt svar* inte hade. Frågan säger nu det.
- *(Tidigare i sessionen)* **7.4 Tärningskast**: avsnittet *Tärningen* på övningssidan (`#kasta`, `#kast`) användes inte någonstans. Lagt till ett avslutande steg i övningen som använder elementen.

## Kapitel 8 – Sant och falskt

Inga ändringar. Alla övningar gick att lösa med kapitlets innehåll, och övningssidan har de element som övningarna använder. (8.4 `=` eller `===`? bygger på att en tilldelning själv ger ett värde, vilket kapitlet inte säger rakt ut – men övningen är gjord för att studenten ska upptäcka det, och lösningen förklarar det.)

## Kapitel 9 – Villkorssatser

- **9.8 Tangentbordsrörelser** (tidigare 9.13), fråga 2: rutans färg sätts i CSS med selektorn `#ruta`. En regel som `.blå { background-color: … }` har lägre specificitet än en id-regel, så klassen ger ingen synlig effekt – studenten får kod som "inte fungerar" av en orsak som boken aldrig tar upp. Lagt till ett tips om att skriva regeln som `#ruta.klassnamn`. **Övningen är också flyttad** från *Egna sidor* till direkt efter *Betyg på sidan*, eftersom den bygger på övningssidan och inte på en egen sida. Det ändrar numren på övningarna 9.8–9.12 (de blir 9.9–9.13).
- **9.13 Vem leder?** (tidigare 9.12): fråga 3, "Planera innan du skriver", kom *efter* fråga 2 där sidan skulle byggas. Planeringen är nu en del av fråga 2, och fråga 3 är "Bygg sidan".

## Kapitel 10 – Loopar

Inga ändringar i övningarna. En sak att ta ställning till:

- **10.10 Frågornas typer** bygger helt på `%` ("ett tal är var tredje om resten vid division med 3 är 0"). CLAUDE.md säger uttryckligen att boken ska undvika modulo-aritmetik, och kapitel 7 säger att `%` "inte behövs ofta". Svårigheten i övningen ligger lika mycket i att förstå resten vid division som i loopen och `else if`-ordningen, som är det egentliga lärandemålet. Övningen fungerar, och tipset knyter an till exemplet med 135 minuter, men överväg att byta till ett scenario utan `%`. Ett alternativ är att låta varje fråga ha en kategori som räknas upp i en fast ordning, eller att använda räknare som nollställs.

## Kapitel 11 – Arrayer

- **11.6 Bygg vidare på anmälan**, fråga 2: ber om ett `<pre>`-element, men övningssidan hade `<p id="anmälda">`. Att låta studenten byta element vore en omväg utan koppling till arrayer, så övningssidan (och HTML-snutten i *Ett löst exempel: anmäl flera lag*) har nu `<pre id="anmälda">` från början. Kapitlets exempel visar ändå allt på en rad, så det ser likadant ut.

## Testkörning av lösningarna

Lösningarna har körts automatiskt med Node.js 22 (samma JavaScript-motor, V8, som Chrome) och jsdom, med varje kapitels övningssida som HTML. Testerna hämtar koden direkt ur lösningsfilerna och kapitlen, simulerar klick, inmatning och tangenttryck, och jämför utskrifter, felmeddelanden och sidans tillstånd med det lösningarna påstår: 337 kontroller, alla godkända efter rättningarna nedan.

**Fel som testerna hittade:**

- **Lösning 5.7**: påstod att elementet visar `undefined` när funktionen saknar `return`. I själva verket blir elementet *tomt* – `textContent = undefined` tömmer elementet. Rättat, med en förklaring av skillnaden mot `"text" + undefined`.
- **Lösning 6.7** och **övning 7.7**: webbläsaren gör varje element med ett id åtkomligt som en global variabel under id:ts namn. I 6.7 gav en saknad deklaration av `antal` därför inte `ReferenceError`, som lösningen påstod, utan `NaN` – sidan har ett `<span id="antal">`. Lösningen beskriver nu vad som faktiskt händer. I 7.7 krockade variabeln `svar` med `<input id="svar">` på övningssidan: den oanvända raden gav `Ditt svar: [object HTMLInputElement]` i stället för det tänkta `ReferenceError`. **Variabeln i övningen heter nu `svaret`**, så att övningen fungerar som det var tänkt.

**Kan bara kontrolleras i en riktig webbläsare** (jsdom räcker inte):

- 1.6: Chromes spärr mot inklistring i konsolen (`allow pasting`).
- 1.5, 3.4, 9.3: exakt formulering av felmeddelanden i *Firefox* och *Safari* (Chrome stämmer).
- 4.7: vad *Visa sidkälla* visar under Live Server.
- 4.10 fråga 3: att `#facit { display: block; }` vinner över `hidden`.
- 9.8: att `#ruta.blå` behövs för att färgen ska synas (CSS-specificitet), och hur `keydown` upprepas när en tangent hålls nere.
- 7-kapitlets ruta om decimalkomma i `<input type="number">`.

## Hänvisningar i övningarna

Övningarna ska bara hänvisa till andra övningar eller kapitel när hänvisningen ger nödvändig information. 29 hänvisningar i kapitel 1–11 är borttagna eller omformulerade, till exempel "(Svaret kommer i kapitel 7.)", "på samma sätt som i kapitel 2", "Jämför med övningen … i kapitel 5" och "som i kapitel 8".

**Kvar** är hänvisningar som studenten behöver för att kunna göra övningen: när övningen bygger vidare på en tidigare lösning eller sida (till exempel 5.8, 7.12, 8.8, 8.10, 9.10, 9.12, 11.12), när en sida ska sparas för att användas senare (7.10, 7.12), och när utgångspunkten är ett exempel eller en övning i samma kapitel.

Följdändringar: 6.1 fråga 3 (jämförelsen med övning 5.1) är omformulerad till en fråga om vem som anropar callbacken, och lösningen är uppdaterad. 9.13 *Vem leder?* fick en kort inledande mening när hänvisningen till övning 3.8 togs bort.

Samma princip är sedan tillämpad på **Stanna upp-rutorna** (6 hänvisningar borttagna eller omformulerade, till exempel "kaffebryggaren eller dörrklockan från kapitel 3", som nu är en fråga i sig: "Ger `visaPoäng` något tillbaka, som en kaffebryggare, eller gör den bara något, som en dörrklocka?") och på **lösningsfilerna** (15 borttagna). I lösningarna finns två hänvisningar kvar, eftersom de behövs: 5.8 jämför med lösningen från kapitel 4 (det är svaret på frågan), och 8.10 anger vilket exempel lösningen utgår från.

Kvar i kapitlen är också hänvisningarna till avsnittet *Egna sidor* i kapitel 6 i inledningen till de egna sidorna i kapitel 7–11. De beskriver arbetsgången och står utanför själva övningarna.

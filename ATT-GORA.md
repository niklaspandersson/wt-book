# Att göra

Öppna punkter som inte hör till den pågående kortningen av brödtexten (se OUTLINE.md, *Bakgrund*). Inaktuella hänvisningar mellan kapitel står i [INAKTUELLA-HANVISNINGAR.md](INAKTUELLA-HANVISNINGAR.md). Stryk en punkt när den är åtgärdad.

## Före kursstart

- **`index.qmd`**: förordet är fortfarande Quartos platshållare ("This is a Quarto book.").
- **`summary.qmd`**: platshållaren ("In summary, this book has no content whatsoever.") står i kapitellistan och publiceras.
- **`del1-sammanfattning.qmd`**: lovar formulär, webblagring och hämtning av data i Del II. De kapitlen är inte skrivna än.
- **Kontrollera i en riktig webbläsare.** Lösningarna är testkörda med Node.js och jsdom, men följande går inte att testa där:
  - övning 1.6: Chromes spärr mot inklistring i konsolen (`allow pasting`);
  - övning 1.5, 3.4 och 9.3: felmeddelandenas exakta formulering i Firefox och Safari;
  - övning 4.7: vad *Visa sidkälla* visar under Live Server;
  - övning 4.10 fråga 3: att `#facit { display: block; }` vinner över `hidden`;
  - övning 9.8: att `#ruta.blå` behövs för att färgen ska synas, och hur `keydown` upprepas när en tangent hålls nere;
  - rutan i kap. 7 om decimalkomma i `<input type="number">`.

## Del I

- **Inline-skript i hela Del I** (se *Scripts in Del I* i CLAUDE.md). Kap. 1 och 5 är omskrivna. Kvar: övningssidorna och instruktionerna i kap. 4 och 6–11 (`script.js`, `type="module"`, Live Server, "Skapa sedan `script.js` …", "Töm `script.js`"), deras lösningsfiler och `del1-sammanfattning.qmd`. Kap. 4 rad 68 hänvisar till Live Server "som i kapitel 1". Görs i samband med att respektive kapitel kortas.
- **Kap. 2: tilldelning utan deklaration.** Utan moduler körs skripten inte i strikt läge. En tilldelning till ett namn som inte är deklarerat, till exempel en felstavning som `poang = poäng + 1;`, skapar då tyst en ny global variabel i stället för att ge `ReferenceError`. Lägg till en kort anmärkning där kap. 2 lär ut `let` och `const`: deklarera alltid, för ett stavfel här ger inget felmeddelande. Inför inte `"use strict"`. Görs när kap. 2 kortas.
- **Stanna upp-rutor saknas i kap. 4 och 6.**
- **Kap. 4 saknar ett löst exempel med namngivna delmål.** Femstegsmönstret från kap. 6 kunde användas i en enklare form (*hämta → bearbeta → visa*).
- **Övningen *Frågornas typer* i kap. 10** bygger på `%` (resten vid division), som boken ska undvika. Byt till ett scenario utan `%`, till exempel kategorier som räknas upp i en fast ordning, eller räknare som nollställs.
- **"Minns du?"-frågor** (PEDAGOGIK §8) är inte införda. De är valfria. Inför dem bara där kapitlet bygger direkt på något tidigare, och håll dem snäva (se *Chapter conventions* i CLAUDE.md).
- **Kapitelinledningarna** ska ha ett motiverande exempel och en tydlig definition av kapitlets huvudbegrepp (se *Chapter openings* i CLAUDE.md). Se över dem i samband med kortningen av varje kapitel.
- **En ordlista svenska–engelska** (PEDAGOGIK §6) saknas. Felmeddelanden och MDN är på engelska (*call, argument, return value, method* …).
- **Tankstreck:** kap. 4 och 6, och fyra ställen i kap. 5, använder långt tankstreck (—). Resten av Del I använder kort (–).
- **Del I-sammanfattningen** är bara en kort text. Den kunde bli ett repetitionskapitel med blandade övningar från hela Del I (PEDAGOGIK §8).
- *Valfritt:* låt quizet vara en röd tråd genom hela Del I. Exemplen växlar i dag mellan quiz, lag, biljetter och moms.
- *Valfritt:* ett kort stycke i kap. 1 om att programmering är svårt och att det är normalt (inspirerat av inledningen till *Eloquent JavaScript*, CC BY-NC). Väg mot *Prose density* i CLAUDE.md.

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

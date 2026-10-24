# Inaktuella hänvisningar

Hänvisningar från ett kapitel till ett annat som inte längre stämmer, efter att det kapitel som hänvisas till har kortats eller gjorts om. Kapitel kortas utan hänsyn till vad andra kapitel hänvisar till. Hänvisningarna rättas i stället när det hänvisande kapitlet ses över. Stryk en punkt när den är åtgärdad.

## Till kapitel 1, *JavaScript och webbläsaren* (`sec-om-javascript`)

- **kap-moduler.qmd, rad 78.** Strikt läge beskrivs som något "som vi kort berört i tidigare kapitel". Det togs bort ur kap. 1, och inget annat kapitel tar upp det. Stryk hänvisningen och förklara strikt läge på plats.

## Till kapitel 3, *Att använda funktioner* (`sec-anropa-funktioner`)

Kapitlet kortades i oktober 2026 enligt *Prose density* i CLAUDE.md.

- **kap-objekt.qmd, rad 354.** "I kapitel 3 såg du att en metod är en funktion som ligger i ett objekt. Sedan dess har du anropat många: `"hej".toUpperCase()` …". Stämmer fortfarande, men `toUpperCase` nämns inte längre i kap. 3 (den kommer i kap. 7). Ingen åtgärd krävs om "sedan dess" får stå kvar.

## Till kapitel 5, *Att skriva egna funktioner* (`sec-funktioner`)

Kapitlet kortades i oktober 2026. Avsnittet *Funktioner är värden* (`const kostnad = biljettpris;`, två namn på samma funktion) är borttaget. Det behövs först för callbacks i kap. 6, som redan förklarar att ett namn utan parenteser är funktionen själv.

- **kap-objekt.qmd, rad 200.** "samma sak som du såg med funktioner i kapitel 5, där två namn kunde peka på samma funktion". Exemplet finns inte längre i kap. 5.

## Till kapitel 7, *Tal och text* (`sec-tal-och-text`)

Kapitlet kortades i oktober 2026. Rutan *Några saker du kommer att stöta på* (flyttal, enskilda tecken, `split`), teckenräknaren och meningen om att längdvarningen kommer i nästa kapitel är borttagna.

- **kap11-arrayer.qmd, rad 112.** Index börjar på 0 "precis som för tecknen i en sträng i rutan *Några saker du kommer att stöta på*". Rutan finns inte längre. Förklara att numreringen börjar på 0 utan hänvisning.
- **kap11-arrayer.qmd, rad 312.** "I kapitel 7 nämnde vi en metod som delar upp en sträng i delar." Kap. 7 nämner inte längre `split`. Introducera metoden utan hänvisning.

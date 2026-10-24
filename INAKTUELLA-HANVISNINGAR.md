# Inaktuella hänvisningar

Hänvisningar från ett kapitel till ett annat som inte längre stämmer, efter att det kapitel som hänvisas till har kortats eller gjorts om. Kapitel kortas utan hänsyn till vad andra kapitel hänvisar till. Hänvisningarna rättas i stället när det hänvisande kapitlet ses över. Stryk en punkt när den är åtgärdad.

## Till kapitel 1, *JavaScript och webbläsaren* (`sec-om-javascript`)

- **kap-moduler.qmd, rad 78.** Strikt läge beskrivs som något "som vi kort berört i tidigare kapitel". Det togs bort ur kap. 1, och inget annat kapitel tar upp det. Stryk hänvisningen och förklara strikt läge på plats.

## Till kapitel 3, *Att använda funktioner* (`sec-anropa-funktioner`)

Kapitlet kortades i oktober 2026 enligt *Prose density* i CLAUDE.md.

- **kap07-tal-och-text.qmd, rad 210.** "Den fria funktionen `Number()`, som du såg ett exempel på i kapitel 3". `Number` visas inte längre i kap. 3 (bara i övningen *Fri funktion, metod eller egenskap?*). Introducera `Number` här utan hänvisning.
- **kap07-tal-och-text.qmd, rad 426.** "Följ raden steg för steg, på samma sätt som de nästlade anropen i kapitel 3". Stegtabellen finns nu bara i övningen *Inifrån och ut*, inte i kapiteltexten. Hänvisa till övningen eller stryk hänvisningen.
- **kap-objekt.qmd, rad 354.** "I kapitel 3 såg du att en metod är en funktion som ligger i ett objekt. Sedan dess har du anropat många: `"hej".toUpperCase()` …". Stämmer fortfarande, men `toUpperCase` nämns inte längre i kap. 3 (den kommer i kap. 7). Ingen åtgärd krävs om "sedan dess" får stå kvar.

## Till kapitel 5, *Att skriva egna funktioner* (`sec-funktioner`)

Kapitlet kortades i oktober 2026. Avsnittet *Funktioner är värden* (`const kostnad = biljettpris;`, två namn på samma funktion) är borttaget. Det behövs först för callbacks i kap. 6, som redan förklarar att ett namn utan parenteser är funktionen själv.

- **kap-objekt.qmd, rad 200.** "samma sak som du såg med funktioner i kapitel 5, där två namn kunde peka på samma funktion". Exemplet finns inte längre i kap. 5.
- **kap08-sant-och-falskt.qmd, rad 336.** "funktionen ska vara definierad innan den lämnas över till `addEventListener`, som du lärde dig i kapitel 5". Kap. 5 tar inte upp det, och `addEventListener` kommer först i kap. 6. (Fel redan före kortningen.)

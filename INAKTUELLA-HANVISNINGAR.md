# Inaktuella hänvisningar

Hänvisningar från ett kapitel till ett annat som inte längre stämmer, efter att det kapitel som hänvisas till har kortats eller gjorts om. Kapitel kortas utan hänsyn till vad andra kapitel hänvisar till. Hänvisningarna rättas i stället när det hänvisande kapitlet ses över. Stryk en punkt när den är åtgärdad.

## Till kapitel 1, *JavaScript och webbläsaren* (`sec-om-javascript`)

- **kap-moduler.qmd, rad 78.** Strikt läge beskrivs som något "som vi kort berört i tidigare kapitel". Det togs bort ur kap. 1, och inget annat kapitel tar upp det. Stryk hänvisningen och förklara strikt läge på plats.

## Till kapitel 4, *Att använda funktioner* (`sec-anropa-funktioner`)

Kapitlet kortades i oktober 2026 enligt *Prose density* i CLAUDE.md.

- **kap-objekt.qmd, rad 354.** "I kapitel 3 såg du att en metod är en funktion som ligger i ett objekt. Sedan dess har du anropat många: `"hej".toUpperCase()` …". Stämmer fortfarande, men `toUpperCase` nämns inte längre i kap. 4 (den kommer i kap. 5). Ingen åtgärd krävs om "sedan dess" får stå kvar.

## Till kapitel 7, *Att skriva egna funktioner* (`sec-funktioner`)

Kapitlet kortades i oktober 2026. Avsnittet *Funktioner är värden* (`const kostnad = biljettpris;`, två namn på samma funktion) är borttaget. Det behövs först för callbacks i kap. 9, som redan förklarar att ett namn utan parenteser är funktionen själv.

- **kap-objekt.qmd, rad 200.** "samma sak som du såg med funktioner i kapitel 5, där två namn kunde peka på samma funktion". Exemplet finns inte längre i kap. 7.

## Till kapitel 9, *Händelser* (`sec-handelser`)

Kapitlet gjordes om i oktober 2026. Det presenterar inte längre "de fem stegen" som en numrerad metod. Det lösta exemplet har kvar kommentarerna *hämta, lyssna, läs, bearbeta, visa*, så att studenten känner igen mönstret, men det ska inte framstå som ett recept (se CLAUDE.md, *A worked example*). Avsnittet *Ett mönster för interaktiva sidor* heter nu *Ett löst exempel: lagnamnet*.

- **kap-objekt.qmd**, en övning: "Skriv de fem stegen som kommentarer först."


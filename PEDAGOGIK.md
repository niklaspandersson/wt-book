# Forskningsstöd för bokens pedagogik

Sammanfattning av forskning om programmeringsundervisning för nybörjare, sammanställd oktober 2026 som underlag för bokens innehåll och övningar. Varje avsnitt avslutas med vad det betyder för *den här boken*. CLAUDE.md hänvisar hit.

Målgruppen är kompletta nybörjare, många utan naturvetenskaplig bakgrund och med begränsade kunskaper i matematik. Det styr hur resultaten nedan tillämpas.

---

## 1. Läsa och spåra kod kommer före att skriva kod

**Forskning.** BRACElet-projektet (Lister, Lopez, Whalley m.fl.) visar att programmeringsförmåga är hierarkisk: att kunna *spåra* kod (följa den rad för rad) och att *förklara* den med egna ord föregår förmågan att *skriva* kod. I en studie förklarade spårnings- och förklaringsförmåga tillsammans 66 % av variationen i förmågan att skriva kod (Venables, Tan & Lister 2009). Studenter som inte kan spåra kod kan sällan förklara den, och de som skriver kod väl behärskar oftast båda. Lister beskriver att lärare ofta felaktigt antar att alla studenter redan kan resonera abstrakt om kod, när många ännu inte ens kan spåra den.

Förmågan att förklara kod på en övergripande nivå ("den här koden hittar det största talet") snarare än rad för rad korrelerar starkt med förmågan att skriva kod (Murphy m.fl. 2012, *Explain in Plain English*).

**För boken.** Varje kapitel bör ha övningar i stigande ordning: *förutsäg → spåra → förklara → modifiera → skriv själv*. Spårningsövningar är inte "lätta extrauppgifter" utan grunden för att kunna skriva. Förklara-övningar bör be om en mening om *vad koden gör som helhet*, inte en genomgång rad för rad.

## 2. PRIMM och Use–Modify–Create

**Forskning.** PRIMM (*Predict, Run, Investigate, Modify, Make*) strukturerar en lektion så att eleven först förutsäger vad ett givet program gör, kör det, undersöker det, ändrar det och till sist skriver ett eget. I en studie med 493 elever (11–14 år) i 13 skolor presterade PRIMM-gruppen bättre på eftertestet än kontrollgruppen, och lärare menade att metoden hjälpte alla elever i blandade grupper att göra framsteg (Sentance, Waite & Kallia 2019). Use–Modify–Create (Lee m.fl. 2011) bygger på samma idé, och elever upplevde lektionerna som lättare, särskilt i början (Lytle m.fl. 2019).

**För boken.** Bokens exempel bör användas som PRIMM-material: först "vad tror du händer?", sedan kör, sedan ändra. Övningen *Gör fel med flit* i kap. 1 är ett bra exempel. Övningar av typen "Skapa en sida som …" bör oftare föregås av en övning där studenten utgår från fungerande kod och ändrar den.

## 3. Parsons-problem

**Forskning.** I ett Parsons-problem får studenten de rätta kodraderna i blandad ordning och ska ordna dem (ibland med extra rader som inte ska användas). Studenter löser dem betydligt snabbare än motsvarande uppgifter där de skriver koden själva, med samma inlärning (Ericson 2018; Ericson m.fl. 2023). Som stöd för uppgifter att skriva kod höjde de prestation och effektivitet, särskilt för studenter med låg tilltro till sin egen förmåga (Hou, Ericson & Wang 2023).

**För boken.** Parsons-problem passar en tryckt bok utmärkt och finns inte alls i Del I i dag. De är ett naturligt mellansteg mellan "spåra" och "skriv själv", och lämpliga för funktioner, villkor, loopar och händelselyssnare. Distraktorrader (t.ex. `=` i stället för `===`, eller en rad med `let` som deklarerar en variabel på nytt) tränar dessutom kända missuppfattningar.

## 4. Lösta exempel och delmål (kognitiv belastning)

**Forskning.** Nybörjare som löser problem från grunden lägger mycket av arbetsminnet på att leta sig fram, och lär sig mindre av det än av att studera ett löst exempel (Sweller 1988; van Gog, Paas & Sweller 2010). Lösta exempel vars steg har *delmålsrubriker* (t.ex. "hämta elementen", "läs värdet", "räkna ut", "visa resultatet") gav i en terminslång studie färre underkända och färre avhopp, framför allt bland studenter i riskzonen (Margulieux, Morrison & Decker 2020). Ovidkommande detaljer i ett exempel – till exempel en krånglig beräkning i ett exempel som handlar om loopar – tar arbetsminne från det som ska läras.

**För boken.** Varje kapitel bör ha minst ett fullständigt löst exempel där stegen har namn, och ett av dessa namngivna mönster bör återkomma genom boken (t.ex. *hämta element → lyssna → läs värde → räkna → visa*). Efter exemplet bör en liknande uppgift följa. Exemplens domän ska vara vardaglig och enkel, så att svårigheten ligger i programmeringen och inte i ämnet.

## 5. Mentala modeller av datorn och kända missuppfattningar

**Forskning.** Många missuppfattningar beror på en felaktig bild av vad datorn gör när koden körs – en felaktig *notional machine* (du Boulay 1986). Sorva (2013) argumenterar för att den modellen ska undervisas explicit, gärna med visualiseringar. Dokumenterade missuppfattningar för nybörjare är bland annat:

- att en variabel kan hålla flera värden samtidigt efter `x = 5; x = 7;`
- att tilldelning går åt fel håll, eller att `=` betyder likhet
- att talvärden adderas vid upprepad tilldelning
- att två namn för ett objekt är två kopior (referenser)
- att en funktion körs där den definieras, inte där den anropas

En studie med 496 nybörjare fann att metaforen "variabeln är en låda" hjälpte vid enkel tilldelning men förstärkte missuppfattningen med flera värden vid upprepad tilldelning, där "variabeln är en etikett/ett namn" fungerade bättre (Hermans m.fl. 2018).

**För boken.** Bokens pilmodell (namn → värde) i kap. 2 är i linje med forskningen. Den bör användas konsekvent genom boken: vid tilldelning i loopar, vid funktionsanrop (parametrar som får värden), vid arrayer och vid referenser i kap. 12. Spårtabeller (en kolumn per variabel, en rad per steg) är ett enkelt sätt att göra modellen synlig i text.

## 6. Matematik är ingen förutsättning – men språkförmåga spelar roll

**Forskning.** Bland 36 vuxna nybörjare som lärde sig Python var språkbegåvning den starkaste förklaringen till hur snabbt de lärde sig. Räknefärdighet förklarade bara omkring 2 % av skillnaderna (Prat m.fl. 2020). Studien är liten, men resultatet är relevant för en målgrupp där många inte ser sig som "mattemänniskor". Analys av betygsfördelningar talar också emot idén om en medfödd "programmerargen". Föreställningen om två grupper av studenter, de som "kan" och de som "inte kan", är framför allt en lärarföreställning (Patitsas m.fl. 2016). Robins (2010) förklarar de skeva utfallen med att programmeringsbegrepp bygger tätt på varandra: den som missar ett tidigt begrepp får svårare med nästa (*learning edge momentum*).

**För boken.** Säg uttryckligen tidigt i boken att programmering inte kräver matematik, och visa det genom att undvika matteuppgifter. Behandla programmering som ett språk: läsa, uttala, förklara, översätta mellan vardagsspråk och kod. Eftersom begreppen bygger på varandra måste de tidiga kapitlen vara säkra och inte överlastade; det är bättre att flytta ett begrepp senare än att introducera det i förbigående.

## 7. Felmeddelanden

**Forskning.** Nybörjare kämpar med felmeddelanden. Förbättrade, förklarande felmeddelanden minskade antalet fel och upprepade fel i en studie (Becker m.fl. 2016), men andra studier fann ingen effekt, så resultaten är blandade. Lärare är dessutom dåliga på att bedöma vilka fel studenter faktiskt gör oftast (Brown & Altadmri 2017).

**För boken.** Att *läsa* felmeddelanden är en färdighet som behöver övas uttryckligen, inte bara förklaras en gång. Ett fåtal JavaScript-fel står för det mesta i början (`ReferenceError`, `TypeError: … is not a function`, `TypeError: Cannot read properties of null`, `SyntaxError`). Dessa bör dyka upp återkommande, med övningar där studenten avkodar meddelandet.

## 8. Repetition och sprida övningen över tid

**Forskning.** Återkommande, lågt insatta förhör och sprid repetition ger bättre långsiktigt minne än samlad övning. Effekten är väl belagd i allmän kognitionsforskning, men stödet i introduktionskurser i programmering är ännu begränsat och blandat (se t.ex. Bego m.fl. 2024).

**För boken.** Övningar som blandar ett nytt begrepp med begrepp från tidigare kapitel (t.ex. en loopövning som också kräver strängar och villkor) och korta "minns du?"-frågor i början av kapitel är billiga att lägga in och har stöd i forskningen.

## 9. Kamratlärande

**Forskning.** *Peer instruction* – studenter svarar individuellt på en flervalsfråga om kod, diskuterar i par och svarar igen – halverade andelen underkända i introduktionskurser jämfört med traditionell undervisning (Porter, Bailey Lee & Simon 2013).

**För boken.** Förutsägelse- och spårningsövningar kan skrivas så att de fungerar som diskussionsfrågor på lektion: ett tydligt svar, men med rimliga felaktiga alternativ baserade på kända missuppfattningar.

## 10. Generativ AI

**Forskning.**

- En fältstudie med nästan tusen gymnasieelever fann att elever med fri tillgång till ChatGPT under övningen presterade bättre så länge verktyget fanns, men 17 % sämre än kontrollgruppen när det togs bort. En AI-handledare med spärrar mot färdiga svar tog i stort sett bort den negativa effekten (Bastani m.fl. 2025).
- I en kvalitativ studie av nybörjare som programmerade med AI-verktyg drog starka studenter nytta av verktygen, medan svaga studenters metakognitiva svårigheter förstärktes. Gapet mellan dem växte (Prather m.fl. 2024).
- Unga nybörjare som hade tillgång till en kodgenerator presterade inte sämre på eftertest en vecka senare, och de med förkunskaper presterade bättre (Kazemitabaar m.fl. 2023).

**För boken.** Bokens AI-rutor bör, som i dag, låta AI:n *förhöra, förklara, ge ledtrådar och skapa övningsmaterial*, men inte lösa uppgifterna. Studenten bör alltid försöka själv först. Det är särskilt viktigt för de svagaste studenterna, och det är de som är målgruppen.

---

## Referenser

- Bastani, H., Bastani, O., Sungu, A., Ge, H., Kabakcı, Ö. & Mariman, R. (2025). Generative AI without guardrails can harm learning: Evidence from high school mathematics. *PNAS*, 122(26). doi:10.1073/pnas.2422633122
- Becker, B. A., Glanville, G., Iwashima, R., McDonnell, C., Goslin, K. & Mooney, C. (2016). Effective compiler error message enhancement for novice programming students. *Computer Science Education*, 26(2–3).
- Bego, C. R. m.fl. (2024). Spaced retrieval practice in introductory STEM courses. *International Journal of STEM Education*, 11.
- Brown, N. C. C. & Altadmri, A. (2017). Novice Java programming mistakes: Large-scale data vs. educator beliefs. *ACM TOCE*, 17(2).
- du Boulay, B. (1986). Some difficulties of learning to program. *Journal of Educational Computing Research*, 2(1).
- Ericson, B. J. (2018). *Evaluating the effectiveness and efficiency of Parsons problems and dynamically adaptive Parsons problems as a type of low cognitive load practice for introductory computer programming*. Doktorsavhandling, Georgia Tech.
- Ericson, B. J. m.fl. (2023). Multi-institutional multi-national studies of Parsons problems. *ITiCSE 2023*.
- Hermans, F., Swidan, A., Aivaloglou, E. & Smit, M. (2018). Thinking out of the box: Comparing metaphors for variables in programming education. *WiPSCE 2018*.
- Hou, X., Ericson, B. J. & Wang, X. (2023). Parsons problems to scaffold code writing: Impact on performance and problem-solving efficiency. *ITiCSE 2023*.
- Kazemitabaar, M. m.fl. (2023). Studying the effect of AI code generators on supporting novice learners in introductory programming. *CHI 2023*.
- Lee, I. m.fl. (2011). Computational thinking for youth in practice. *ACM Inroads*, 2(1).
- Lytle, N. m.fl. (2019). Use, modify, create: Comparing computational thinking lesson progressions for STEM classes. *ITiCSE 2019*.
- Margulieux, L. E., Morrison, B. B. & Decker, A. (2020). Reducing withdrawal and failure rates in introductory programming with subgoal labeled worked examples. *International Journal of STEM Education*, 7.
- Murphy, L., Fitzgerald, S., Lister, R. & McCauley, R. (2012). Ability to "explain in plain English" linked to proficiency in computer-based programming. *ICER 2012*.
- Patitsas, E., Berlin, J., Craig, M. & Easterbrook, S. (2016). Evidence that computer science grades are not bimodal. *ICER 2016*.
- Porter, L., Bailey Lee, C. & Simon, B. (2013). Halving fail rates using peer instruction. *SIGCSE 2013*.
- Prat, C. S., Madhyastha, T. M., Mottarella, M. J. & Kuo, C.-H. (2020). Relating natural language aptitude to individual differences in learning programming languages. *Scientific Reports*, 10, 3817.
- Prather, J. m.fl. (2024). The widening gap: The benefits and harms of generative AI for novice programmers. *ICER 2024*.
- Robins, A. (2010). Learning edge momentum: A new account of outcomes in CS1. *Computer Science Education*, 20(1).
- Sentance, S., Waite, J. & Kallia, M. (2019). Teaching computer programming with PRIMM: A sociocultural perspective. *Computer Science Education*, 29(2–3).
- Sorva, J. (2013). Notional machines and introductory programming education. *ACM TOCE*, 13(2).
- Sweller, J. (1988). Cognitive load during problem solving: Effects on learning. *Cognitive Science*, 12(2).
- van Gog, T., Paas, F. & Sweller, J. (2010). Cognitive load theory: Advances in research on worked examples, animations, and cognitive load measurement. *Educational Psychology Review*, 22.
- Venables, A., Tan, G. & Lister, R. (2009). A closer look at tracing, explaining and code writing skills in the novice programmer. *ICER 2009*.

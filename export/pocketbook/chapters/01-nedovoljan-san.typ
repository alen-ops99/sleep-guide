// ============================================================================
// Poglavlje 1: Sindrom nedovoljnog spavanja
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 1,
  title: "Sindrom nedovoljnog spavanja",
  mkb: "F51.12",
  icsd: "Behaviorally Induced Insufficient Sleep Syndrome",
  color: cat-hypersomnia,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Marko, 42 g.*, dolazi zbog „stalne iscrpljenosti i gubitka koncentracije". Spava 5–5,5 h radnim danom, vikendom 9 h. Tri kave dnevno. „Ja sam oduvijek kratko spavač, to mi ne smeta." ESS 14/24 — umjerena pospanost.]
)
#v(3pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [Spava \<7h radnim danom, ≥2h dulje vikendom, ovisan o alarmu. Dnevna pospanost i umor koji nestaju na odmoru. Najčešći uzrok EDS-a — ispred narkolepsije!],
    [*Učini*], [Jedno pitanje: „Koliko sati zapravo spavate radnim danom?" Dnevnik spavanja 2 tj. Dijagnostički test = liječenje: 2 tj. sna 8–9 h. NE stimulanse.],
    [*Uputi*], [Samo ako EDS perzistira unatoč dokumentiranom snu ≥7h kroz ≥2 tj. → centar za spavanje. Ovo je 100% u domeni LOM-a.],
  )
]

#v(4pt)
#kljucna-poruka[
  + *Najčešći uzrok EDS-a u PZZ* — daleko ispred narkolepsije. Mora biti isključen prije daljnje obrade.
  + *Dijagnoza jednim pitanjem:* „Koliko sati zapravo spavate radnim danom?" \<7h + razlika ≥2h prema vikendu = klinička sumnja.
  + *Dijagnostički test = liječenje:* 2 tjedna sna 8–9 h. Simptomi nestanu → dijagnoza potvrđena, pacijent izliječen.
  + *MSLT bez prethodnog adekvatnog sna = lažni rezultati.* Moguća pogrešna dijagnoza narkolepsije.
  + *100% u domeni LOM-a.* Dobra anamneza, dnevnik spavanja i 15 minuta edukacije — bez PSG-a i specijalista.
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [„Koliko sati stvarno spavate radnim danom?"], [\<7h + vikendom ≥2h više = nedovoljan san],
    [„Koliko spavate vikendom bez alarma?"], [Razlika ≥2h = socialni jetlag → kronični dug sna],
    [„Trebate li alarm za buđenje?"], [Ovisnost o alarmu = biološki deficit sna],
    [„Zaspite li brzo kad legnete?"], [\<5 min = znak deprivacije, ne „zdravog sna"],
    [„Pijete li više od 3 kave dnevno?"], [Kompenzatorna strategija za kroničnu pospanost],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

Sindrom nedovoljnog spavanja je kronično, dobrovoljno skraćivanje sna uz posljedičnu pretjeranu dnevnu pospanost (EDS). Prevalencija: 20–35% odraslih habitualno spava \<7h; u praksi s 2.000 pacijenata: 300–700 odraslih.

*Ključni simptomi:*
- *Spava \<7h radnim danima, ali značajno dulje vikendom/na odmoru* (≥2h razlike)
- *Dnevna pospanost, umor, poteškoće s koncentracijom*
- *Simptomi se poboljšavaju pri produženom snu* (vikend, odmor, bolovanje)

*Podržavajući znakovi:*
- Višestruki alarmi za buđenje
- Prekomjerna konzumacija kofeina (>3 šalice/dan)
- „Nema vremena za spavanje" (profesionalne, obiteljske obveze)
- Mikrosanovi (kratki „zastoji" za volanom ili na poslu)

*Diferencijalni tragovi:*
- *OSA* — pospanost unatoč „dovoljnom" vremenu u krevetu; hrkanje + apneja
- *Narkolepsija* — pospanost neovisna o trajanju sna, katapleksija
- *Hipotireoza* — umor uz debljanje, intoleranciju hladnoće; provjera TSH

*Ključno pitanje:*

#pearl[*„Koliko sati zapravo spavate radnim danom — od trenutka kad ugasite svjetlo do alarma?"* Ako \<7h, slijede: (1) „Koliko spavate vikendom?" — razlika ≥2h = dug sna. (2) „Trebate li alarm?" — ovisnost o alarmu = nedovoljan san.]

*Na što obratiti pozornost:*
- _„Ja zaspim odmah"_ — usnivanje za \<5 min = znak deprivacije, ne „zdravog sna"
- _„Ja sam kratko spavač"_ — pravi kratki spavači čine *\<1% populacije* i *nemaju* dnevnu pospanost

// === Probir i dijagnostika ===
== Probir i dijagnostika

=== Korak 1: Epworthova ljestvica pospanosti (ESS)

#label("ess-tablica")
#set text(size: 8.5pt)
#table(
  columns: (1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[ESS zbroj],
    text(weight: "bold")[Interpretacija],
  ),
  [0–10], [Normalna dnevna pospanost],
  [*11–15*], [*Umjerena pospanost — indicirana obrada*],
  [*≥16*], [*Teška pospanost — hitna obrada*],
)

=== Korak 2: Dnevnik spavanja (2 tjedna)

Ključni parametar: prosječno vrijeme spavanja radnim danom vs. vikend. San *\<7h* radnim danom + vikend san ≥2h duži = *visoka sumnja na nedovoljan san.*

=== Korak 3: Dijagnostički test — produženje sna (2 tjedna)

Istovremeno dijagnostički test i liječenje:
- Pacijent *2 tjedna* ide u krevet dovoljno rano za *8–9 h* u krevetu svaku noć
- Bez alarma vikendom (spontano buđenje)
- Nakon 2 tjedna — ponoviti ESS i evaluirati simptome

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Ishod],
    text(weight: "bold")[Interpretacija],
  ),
  [EDS se povukla, ESS normaliziran], [*Dijagnoza potvrđena: nedovoljan san*],
  [EDS perzistira unatoč snu 7–9 h ≥2 tj.], [*Isključen nedovoljan san → daljnja obrada (MSLT, PSG)*],
)

#v(4pt)
#pearl[*MSLT NIKADA bez prethodnog adekvatnog sna ≥2 tj.* Nedovoljan san daje skraćenu latenciju i SOREMP-ove na MSLT-u → moguća *lažno pozitivna dijagnoza narkolepsije*.]

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  - *Pospanost za volanom* — \<6h sna = rizik prometne nesreće 2–3× veći. Upozoriti; savjetovati izbjegavanje vožnje
  - *Zasipanje na rizičnom radnom mjestu* — industrijske nesreće, medicinske pogreške → hitna intervencija
  - *Metabolički sindrom uz kronično kratko spavanje* — neovisni čimbenik rizika za pretilost, DM tip 2
  - *Depresivna simptomatologija* — deprivacija sna i depresija se međusobno pojačavaju; razlučiti uzrok od posljedice
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== Jedini lijek: PRODUŽENJE SNA

*Ne postoji farmakoterapija.* Stimulansi ne liječe uzrok — samo maskiraju simptome. Jedini lijek je *spavati dovoljno*. PSG nije potrebna.

=== Praktični protokol

*1. Ciljno vrijeme u krevetu* (AASM/SRS 2015):
- *18–64 g.:* 7–9 h sna po noći
- *≥65 g.:* 7–8 h sna po noći
- Ciljati 8–8,5h u krevetu da se osigura ≥7h stvarnog sna

*2. Izračun vremena lijeganja* — s pacijentom:
- _„U koliko se morate probuditi?"_ → npr. 06:00
- _„Trebate 8h u krevetu"_ → lijeganje najkasnije 22:00
- _„Priprema za san počinje u 21:30"_

*3. Identificirajte barijere:*

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Barijera],
    text(weight: "bold")[Pristup],
  ),
  [*Ekrani navečer*], [Pravilo „bez ekrana 60 min prije sna"],
  [*Prekovremeni rad*], [Edukacija o zdravstvenim posljedicama; liječnička preporuka],
  [*Odgađanje spavanja*], [Noć kao jedino slobodno vrijeme → restrukturirati dnevni raspored],
  [*Smjenski rad*], [Vidi poglavlje 4 (cirkadijani poremećaji)],
  [*Mala djeca*], [Rotacija noćnih obaveza s partnerom; vikend kompenzacija],
)

*4. Educirajte o zdravstvenim posljedicama:*
- *KV bolesti:* Hipertenzija, IM, CVI — rizik povećan 20–40%
- *Metaboličke bolesti:* Pretilost, inzulinska rezistencija, DM tip 2 — rizik 30–50%
- *Kognitivno oštećenje:* Pažnja, pamćenje, egzekutivne funkcije
- *Nesreće:* 24h bez sna = ekvivalent 1,0‰ alkohola u krvi

*5. Kontrola za 2–4 tjedna:* Evaluacija dnevnika, ponoviti ESS. Ako EDS perzistira uz dokumentirano adekvatan san → uputiti.

#pearl[*Ovo je 100% u domeni LOM-a.* Anamneza, dnevnik spavanja, ESS, terapijski test produljenjem sna — LOM ima sve alate za potpuno samostalno zbrinjavanje. PSG i specijalist nisu potrebni osim za refraktorne slučajeve.]

// === Praćenje ===
== Praćenje

#set text(size: 8.5pt)
#table(
  columns: (0.8fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Kada],
    text(weight: "bold")[Što učiniti],
  ),
  [*2 tjedna*], [Pregled dnevnika spavanja. Je li pacijent postigao ≥7h/noć?],
  [*4 tjedna*], [Ponoviti ESS. Ako EDS se povukla → dijagnoza potvrđena. Nastaviti edukaciju.],
  [*Ako EDS perzistira*], [Dokumentirani adekvatan san ≥2 tj., a EDS traje → uputiti na MSLT/PSG.],
  [*Dugoročno*], [Pacijenti se često vraćaju na stare navike. Redovit podsjetnik na kontrolama.],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [EDS perzistira unatoč ≥2 tj.\ dokumentiranog sna 7–9 h/noć], [Centar za medicinu\ spavanja], [Narkolepsija, IH, PLMD;\ MSLT indicirano],
  [Sumnja na komorbidnu OSA\ (hrkanje, BMI >30)], [Pulmolog / centar\ za spavanje], [Sleep studija;\ nedovoljan san + OSA česti],
  [Smjenski rad — ne može\ produljiti san], [Specijalist medicine\ rada], [Radno-pravni aspekti;\ poglavlje 8],
  [Psihijatrijski komorbiditet\ (anksioznost, PTSP)], [Psihijatar], [Liječiti osnovni poremećaj\ paralelno],
))

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [„Ja funkcioniram na 5h sna" → prihvatiti], [Subjektivna adaptacija ≠ odsutnost oštećenja. Pravi kratki spavači (\<1%) *nemaju* EDS],
  [MSLT bez prethodnog produženja sna], [Lažno pozitivni nalaz → pogrešna dijagnoza narkolepsije!],
  [Dijagnoza narkolepsije/IH bez\ isključenja nedovoljnog sna], [Uvijek prvo 2 tj. adekvatnog sna — obavezan korak prema ICSD-3],
  [Ne pitati o razlici radni dan/vikend], [Razlika ≥2h = najjednostavniji probir],
  [Propisati stimulanse umjesto\ produženja sna], [Stimulansi maskiraju simptome, ne liječe uzrok],
  [Savjet bez konkretnog plana], [Izračunajte ciljno vrijeme, identificirajte barijere, dajte dnevnik, zakažite kontrolu],
))


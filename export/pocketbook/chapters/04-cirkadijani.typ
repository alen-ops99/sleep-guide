// ============================================================================
// Poglavlje 4: Poremećaji cirkadijanog ritma
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 4,
  title: "Poremećaji cirkadijanog ritma",
  mkb: "G47.21 / G47.22 / G47.26 / G47.24",
  icsd: "Circadian Rhythm Sleep-Wake Disorders",
  color: cat-circadian,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Luka, 17 g.*, majka ga dovodi jer „ne može zaspati“. U krevet ide u 23h, ali zaspi tek u 02–03h. Ujutro se jedva budi za školu. Vikendom? Spava od 03h do 12h — „odlično se naspava“. Pedijatar propisao zolpidem — bez učinka. Zolpidem nije indiciran u maloljetnika, a DSWPD nije nesanica — hipnotik ne rješava problem vremena.]
)
#v(3pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [Mladi koji "ne mogu zaspati" prije 02–03h, ali spavaju normalno vikendom (DSWPD). Stariji zaspu u 19–20h, bude se u 03–04h (ASWPD). Smjenski radnici s kroničnim umorom.],
    [*Učini*], [Dnevnik spavanja 2 tj. (uključi vikend!). DSWPD: melatonin 0,5–3 mg u 18–19h + jutarnje svjetlo 10.000 lux × 30 min. Smjenski rad: edukacija.],
    [*Uputi*], [Bez odgovora na kronoterapiju 4–6 tj. → centar za spavanje (aktigrafija, DLMO — _Dim Light Melatonin Onset_ — početak lučenja melatonina).],
  )
]

#v(4pt)
#kljucna-poruka[
  + *Cirkadijani poremećaji = problem VREMENA, ne KVALITETE sna.* Ključno pitanje: „Spavate li dobro vikendom?“ Ako DA → nije nesanica.
  + *DSWPD je najčešći propušteni cirkadijani poremećaj.* Adolescenti koji „ne mogu zaspati“ nemaju nesanicu — hipnotik ne pomaže.
  + *Melatonin za DSWPD: mala doza, rano navečer.* 0,5–3 mg u 18–19h. Više nije bolje.
  + *Smjenski rad nije benigan.* KV bolesti, metabolički sindrom, karcinomi. LOM aktivno probire i savjetuje.
  + *Rano buđenje starijih nije uvijek depresija.* Očuvano raspoloženje → ASWPD. Večernje svjetlo pomaže.
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [„Spavate li dobro vikendom kada nemate obaveza?“], [DA + loš san radnim danom = cirkadijani, ne nesanica],
    [„Kada biste najradije išli spavati bez ikakvih obaveza?“], [>02h = sumnja na DSWPD],
    [„U koliko sati se prirodno budite vikendom?“], [Spontano buđenje otkriva endogeni ritam],
    [„Je li problem samo usnivanje ili i održavanje sna?“], [Samo usnivanje + vikendom OK = klasični DSWPD],
    [„Radite li u smjenama?“], [Smjenski rad → specifičan protokol upravljanja],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

Poremećaji cirkadijanog ritma nastaju kad je unutarnji biološki sat pomaknut u odnosu na društveni raspored — problem vremena, ne kvalitete sna. Prevalencija: DSWPD (poremećaj faze odgođenog spavanja) 1–3% opće populacije (7–16% adolescenata); u praksi s 2.000 pacijenata: 20–60 ima DSWPD.

=== DSWPD — pomak unatrag

*Tipičan pacijent:* Adolescent 15–30 g. koji "ne može zaspati" prije 02–04h, a ujutro se "ne može probuditi" za školu/posao.

*Ključni simptomi:*
- Nemogućnost usnivanja prije 02–04h
- Velike poteškoće s buđenjem u 06–08h
- *Za vikend spava odlično* (03–04h do 11–12h) — pun san
- Kronična parcijalna deprivacija radnim danima (3–5 h umjesto 8–9 h)

=== ASWPD — pomak unaprijed

*Tipičan pacijent:* Starija osoba (>60 g.) zaspi u 18–20h, budi se u 02–05h.

*Ključna DD: ASWPD vs. depresija* — ako su raspoloženje, apetit i interesi očuvani → razmisliti o ASWPD-u (poremećaj faze unaprijeđenog spavanja) prije dijagnoze depresije.

=== Poremećaj smjenskog rada

*Tipičan pacijent:* Radnik na rotacijskim/noćnim smjenama s nesanicom i/ili pospanosti vremenski vezanom uz smjenski raspored.

=== Non-24

Gotovo isključivo u *potpuno slijepih osoba* — endogeni sat „slobodno trči“. LOM prepoznaje i upućuje specijalistu za melatonin protokole.

*Ključna pitanja:*
+ „Spavate li dobro vikendom kada nemate obaveza?“ — ako DA → cirkadijani, ne nesanica
+ „Kada biste najradije išli spavati bez ikakvih obaveza?“
+ „U koliko sati se prirodno budite vikendom?“

// === Probir i dijagnostika ===
== Probir i dijagnostika

*Dnevnik spavanja (2 tjedna)* — temeljni dijagnostički alat. *Obavezno uključiti slobodne dane* — razlika između radnih i slobodnih dana otkriva cirkadijanu komponentu.

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Parametar],
    text(weight: "bold")[DSWPD (radni)],
    text(weight: "bold")[DSWPD (vikend)],
    text(weight: "bold")[Nesanica],
  ),
  [Usnivanje], [02–04h], [02–04h], [Varijabilno],
  [Buđenje], [06:30 (alarm, s mukom)], [11–12h (spontano)], [Varijabilno],
  [Trajanje sna], [3–4 h], [7–9 h], [Skraćeno],
  [Kvaliteta], ["Odličan kad zaspim"], [Odlična], [Loša],
)

#pearl[Obrazac *kratkog sna radnim danima + dugog, kvalitetnog sna vikendom* gotovo je patognomoničan za DSWPD.]

*Specijalistička dijagnostika:* Aktigrafija (≥7 dana) i DLMO. PSG nije potrebna osim za isključivanje komorbiditeta.

*LOM može klinički dijagnosticirati DSWPD i poremećaj smjenskog rada* na temelju anamneze i 2-tjednog dnevnika.

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  *DSWPD:*
  - *Školski neuspjeh/odustajanje od školovanja* — kronična deprivacija uzrokuje pad kognitivnih funkcija
  - *Sekundarna depresija* — depresija može biti *posljedica* DSWPD-a, ne uzrok
  - *Zlouporaba stimulansa* (kofein, energetska pića, nikotin) za održavanje budnosti

  *Smjenski rad:*
  - *Pospanost za volanom* — sigurnosno kritično; nesreća nakon noćne smjene jednako opasna kao vožnja pod utjecajem alkohola
  - *Metabolički i KV rizik* — neovisni čimbenik rizika za pretilost, DM tip 2, IM, CVI
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== DSWPD — protokol za LOM

Cilj: *pomicanje cirkadijanog ritma unaprijed* — melatonin (pomicanje sata) + jutarnje svjetlo (sidrenje sata).

*1. Melatonin — kronobiološka doza*

#set text(size: 8.5pt)
#table(
  columns: (0.8fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Parametar],
    text(weight: "bold")[Preporuka],
  ),
  [*Doza*], [0,5–3 mg (niže doze jednako ili više učinkovite!)],
  [*Vrijeme*], [5–7 h prije DLMO-a → u praksi *18–19h*],
  [*Trajanje*], [Min. 4 tjedna, obično dugoročno],
  [*HR*], [Melatonin 2 mg PR registriran; niže doze OTC],
)

#pearl[*Česta pogreška:* Melatonin 5–10 mg u ponoć = koristi se kao (slab) hipnotik. Ispravno: *mala doza, rano navečer* — za pomicanje faze.]

#pearl[*Razlikujte oblike melatonina:* Brzo otpuštajući (IR) melatonin u niskoj dozi za _pomicanje faze_ (kronobiološki učinak). Produljeno otpuštajući (PR) melatonin 2 mg za _održavanje sna_ u starijih. Za DSWPD uvijek brzo otpuštajući.]

*2. Jutarnja svjetloterapija:* 10.000 lux × 30 min odmah po buđenju. Alternativa: izlazak na jutarnje sunce.

*3. Izbjegavanje svjetla navečer:* Bez ekrana 2–3 h prije željenog usnivanja. Prigušiti rasvjetu od 20–21h.

*4. Postupno pomicanje rasporeda:* 15–30 min ranije svaka 2–3 dana. Ne pokušavati nagli skok.

*Praktični protokol:*
+ Melatonin 0,5–1 mg u 18–19h svaki dan
+ Jutarnje svjetlo 10.000 lux × 30 min
+ Ekrani od 21h — stop
+ Pomicanje 15 min ranije svaka 2 dana
+ Kontrola za 4 tjedna (ponovni dnevnik)
+ Održavati raspored i vikendom (max 1 h odstupanje)

=== ASWPD

Cilj: *pomicanje ritma unatrag.* Večernja ekspozicija svjetlu (2.500–10.000 lux, 17–20h). Popodnevno sunce (šetnja). Izbjegavati rano jutarnje svjetlo (maska za oči, zavjese). Rijetko zahtijeva farmakoterapiju.#evidence("IIb")

=== Poremećaj smjenskog rada

Potpuna eliminacija smjenskog rada je idealna, ali rijetko praktična.

*Strategije ublažavanja:*
- *Zamračenje sobe:* Blackout zavjese, čepići za uši, bijeli šum, hladno (18–20°C)
- *Melatonin:* 0,5–3 mg prije dnevnog sna (nakon noćne smjene)
- *Kofein strateški:* DA na početku noćne smjene; NE zadnjih 6 h prije sna
- *Drijemež:* 20–30 min prije noćne smjene
- *Tamne naočale:* Na putu kući nakon noćne smjene
- *Rotacija u smjeru kazaljke na satu* (jutarnja → popodnevna → noćna)

*Zdravstveni probir* za smjenske radnike >5 god.: GUK, HbA1c, lipidogram, RR, STOP-BANG za OSA.

=== Farmakoterapija

#pharma-table((
  // Melatonin za DSWPD
  (
    [*Melatonin*\ #text(size: 7pt)[(kronobiološki)]],
    [0,5–3 mg\ t½ 40–60 min\ #text(size: 7pt)[(u 18–19h)]],
    [Hepat.\ CYP1A2],
    [Fluvoksamin *⚠*],
    [✓],
  ),
  // Melatonin PR
  (
    [*Melatonin PR*\ #text(size: 7pt)[(2 mg)]],
    [2 mg\ t½ 3,5–4 h\ #text(size: 7pt)[(>55 god.)]],
    [Hepat.\ CYP1A2],
    [Fluvoksamin *⚠*],
    [✓],
  ),
  // Modafinil
  (
    [*Modafinil*\ #text(size: 7pt)[(smjenski rad)]],
    [100–200 mg\ t½ 15 h\ #text(size: 7pt)[(prije smjene)]],
    [Hepat.\ CYP3A4 ind.],
    [Kontraceptivi *⚠*\ CYP2C19 substr. *⚠*],
    [○],
  ),
))

#pearl[*Načelo „start low, go slow“:* Melatonin započeti s 0,5 mg. Ako nema učinka nakon 2 tjedna, povećati na 1–2 mg. Više doze rijetko donose dodatnu korist za pomak faze.]

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
  [*2 tjedna*], [Pregled dnevnika spavanja. Provjera pridržavanja (melatonin u 18–19h?).],
  [*4–6 tjedana*], [Evaluacija pomaka faze. Bez pomaka → uputiti specijalistu.],
  [*3 mjeseca*], [Provjera održavanja rasporeda. Upozoriti na vikendom konzistentnost.],
  [*Smjenski rad*], [Godišnji probir: GUK, lipidogram, RR, STOP-BANG.],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [Refraktoran DSWPD ≥8 tj.\ melatonin + svjetloterapija], [Centar za medicinu\ spavanja / neurolog], [Aktigrafija, DLMO,\ kronoterapija pod nadzorom],
  [Dijagnostička nesigurnost\ (nesanica ili cirkadijani?)], [Centar za medicinu\ spavanja], [Aktigrafija za\ objektivnu potvrdu],
  [Sumnja na Non-24\ (slijepa osoba, progresivni pomak)], [Neurolog / centar za\ medicinu spavanja], [Specijalizirani melatonin\ protokoli],
  [Teška pospanost smjenskog\ radnika (vozač, kirurg)], [Centar za medicinu\ spavanja], [Evaluacija za modafinil;\ MWT; radno-pravni aspekti],
  [Sekundarna depresija uz DSWPD], [Psihijatar + centar\ za spavanje], [Paralelno liječenje oboje],
  [Komorbiditet s OSA/RLS], [Centar za medicinu\ spavanja], [PSG; komorbiditeti\ kompliciraju liječenje],
))

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [DSWPD → dijagnoza „nesanica“ + hipnotik], [Pitajte o vikendnom snu; ako spava dobro = cirkadijani poremećaj],
  [Melatonin 5–10 mg u ponoć za DSWPD], [Niske doze (0,5–3 mg) u 18–19h — *vrijeme > doza*],
  [Rano buđenje starije osobe = depresija], [Očuvano raspoloženje i interes → razmisliti o ASWPD-u],
  [„Ma to je samo lijenost“ (mladi s DSWPD)], [DSWPD je biološki poremećaj; kažnjavanje pogoršava],
  [„Samo se naviknite“ (smjenski radnik)], [Cirkadijani sustav se ne može „naviknuti“ na noćni rad],
  [Ignoriranje razlike radni dan/vikend], [Upravo ta razlika otkriva cirkadijanu komponentu],
  [Zanemariti zdravstvene rizike smjenskog rada], [Aktivni probir: KV rizik, metabolički sindrom, karcinomi],
))

#literatura((
  [Auger RR et al. Clinical Practice Guideline for the Treatment of Intrinsic Circadian Rhythm Sleep-Wake Disorders. _J Clin Sleep Med._ 2015;11(10):1199–1236.],
  [Morgenthaler TI et al. Practice Parameters for the Clinical Evaluation and Treatment of Circadian Rhythm Sleep Disorders. _Sleep._ 2007;30(11):1445–1459.],
  [Zhu L, Zee PC. Circadian Rhythm Sleep Disorders. _Neurol Clin._ 2012;30(4):1167–1191.],
  [Wickwire EM et al. Shift Work and Shift Work Sleep Disorder: Clinical and Organizational Perspectives. _Chest._ 2017;151(5):1156–1172.],
  [Burgess HJ et al. Human phase response curves to three days of daily melatonin: 0.5 mg versus 3.0 mg. _J Clin Endocrinol Metab._ 2010;95(7):3325–3331.],
))

#chapter-summary(
  title: "4. Cirkadijani poremećaji",
  category: "Cirkadijani poremećaji",
  color: cat-circadian,
  prepoznaj: [San kvalitetan, ali u krivo vrijeme. DSWPD: ne može zaspati prije 02–04h. ASWPD: budni od 03–04h. Smjenski rad: nesanica + pospanost.],
  ucini: [Dnevnik spavanja 2 tj. (uklj. vikend). Melatonin IR za pomak faze. Jutarnje/večernje svjetlo (10.000 lux, 30 min).],
  uputi: [Bez odgovora 4–6 tj., neregularan tip, smjenski rad s prometnim nesrećama → centar za spavanje.],
  drugs: (
    ([Melatonin IR], [0,5–3 mg, 4–6h prije DLMO], [✓]),
    ([Svjetloterapija], [10.000 lux, 30 min], [—]),
  ),
  red-flags: (
    [Smjenski rad + pospanost za volanom — sigurnosna procjena obavezna],
    [Depresija kod DSWPD — česta, liječiti paralelno],
    [Adolescent s „lijenošću“ — razmotriti DSWPD prije psihijatrijske dijagnoze],
  ),
)


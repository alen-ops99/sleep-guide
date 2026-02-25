// ============================================================================
// Poglavlje 5: Sindrom nemirnih nogu (RLS) i PLMD
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 5,
  title: "Sindrom nemirnih nogu (RLS) i PLMD",
  mkb: "G25.81 (RLS) / G47.61 (PLMD)",
  icsd: "Sleep-Related Movement Disorders",
  color: cat-movement,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Mirjana, 62 g.*, žali se na „nemirne noge navečer" — neodoljiv nagon za pomicanjem, pogoršava se u mirovanju, prolazi hodanjem. Liječena kao anksioznost — paroksetin 20 mg (koji pogoršava RLS!). Feritin 35 ng/mL — „u granicama normale".]
)
#v(3pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [URGED: nagon za kretanjem + mirovanje pogoršava + kretanje pomaže + večer/noć + distres. Opisi: „lude noge", „mravci puzaju".],
    [*Učini*], [Feritin (cilj ≥100 ng/mL). Gabapentin 300 mg navečer. Revizija lijekova (antihistaminici, SSRI). PHQ-9.],
    [*Uputi*], [Gabapentinoidi ne pomažu, sumnja na augmentaciju, atipična prezentacija → neurolog.],
  )
]

#v(4pt)
#kljucna-poruka[
  + *RLS se dijagnosticira klinički* -- 4 IRLS kriterija. Ne treba PSG. Pitajte aktivno -- 5--10% populacije.
  + *Uvijek feritin -- cilj ≥100 ng/mL* (AASM 2024). Feritin \< 75 → oralno/IV; 75--100 → samo IV.
  + *Gabapentin/pregabalin su prva linija.* AASM 2024 uvjetno PROTIV dopaminskih agonista (augmentacija 30--50%).
  + *Revizija lijekova* -- antihistaminici, SSRI/SNRI, antipsihotici i metoklopramid pogoršavaju RLS.
  + *Augmentacija* = simptomi ranije + širenje na ruke. NE povećavajte DA dozu. Uputite specijalistu.
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [„Osjećate li neugodan osjećaj u nogama koji vas tjera da ih pomaknete?"], [Ključni URGED kriterij — nagon za pokretanjem],
    [„Je li gori kad mirujete — kad sjedite ili ležite?"], [Pogoršanje u mirovanju = drugi kriterij],
    [„Pomaže li hodanje ili pomicanje nogu?"], [Poboljšanje pokretom = treći kriterij],
    [„Je li problem gori navečer i noću?"], [Cirkadijani obrazac = četvrti kriterij],
    [„Uzimate li antihistaminike, antidepresive ili lijekove protiv mučnine?"], [Česti jatrogeni pogoršavači RLS-a],
    [„Kaže li vam partner da vam se noge trzu u snu?"], [Pozitivno → sumnja na PLMD (zahtijeva PSG)],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

RLS je neurološki poremećaj s neodoljivim nagonom za pokretanjem nogu uz neugodne senzacije; PLMD obilježavaju ponavljajući trzaji nogu tijekom sna. Prevalencija: 5–10% opće populacije; u praksi s 2.000 pacijenata: 100–200 pacijenata s RLS-om.

*URGED mnemonik* -- svih 5 kriterija mora biti prisutno:
- #strong[U]rge to move -- nagon za kretanjem uz neugodne senzacije
- #strong[R]est worsens -- pogoršanje u mirovanju (sjedenje, ležanje)
- #strong[G]ets better with movement -- poboljšanje kretanjem
- #strong[E]vening predominance -- cirkadijana komponenta (najjači navečer/noću)
- #strong[D]istress/disability -- značajna nelagoda ili funkcionalno oštećenje

*Česti opisi pacijenata:* „lude noge", „mravci puzaju", „mjehurići sode", „struja u nogama".

*Diferencijalni tragovi:*
- Akatizia (lijekovima izazvana) -- nema cirkadijanog obrasca
- Periferna neuropatija -- konstantni simptomi, ne samo navečer
- Noćni grčevi -- izolirani, bolni, bez nagona za kretanjem

*Pitanja za anamnezu:*
+ „Osjećate li neugodan osjećaj u nogama koji vas tjera da ih pomaknete, osobito navečer?"
+ „Je li gori kad mirujete -- kad sjedite ili ležite?"
+ „Pomaže li hodanje ili pomicanje nogu?"
+ „Je li problem gori navečer i noću nego ujutro?"
+ „Uzimate li antihistaminike, antidepresive ili lijekove protiv mučnine?"
+ „Kaže li vam partner/ica da vam se noge trzu u snu?" (PLMS)

// === Probir i dijagnostika ===
== Probir i dijagnostika

*RLS je klinička dijagnoza* -- ne zahtijeva PSG ni instrumentalni test. Četiri IRLS kriterija u anamnezi dovoljni su. *LOM može i treba dijagnosticirati RLS.*

=== IRLS ljestvica (procjena težine)

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Bodovi (0--40)],
    text(weight: "bold")[Težina],
  ),
  [1--10], [Blagi RLS],
  [*11--20*], [*Umjereni* -- farmakoterapija indicirana],
  [*21--30*], [*Teški*],
  [*31--40*], [*Vrlo teški*],
)

=== Laboratorijska obrada

- *Feritin* -- cilj *≥100 ng/mL* (AASM 2024). POZOR: feritin je reaktant akutne faze; ako je CRP ↑, feritin može biti lažno normalan
- *KKS* -- anemija, sideropenija
- *TSH* -- isključiti hipotireozu
- *GUK, kreatinin, elektroliti* -- isključiti KBB, dijabetes
- *HbA1c, vitamin B12* -- po potrebi

*PSG* -- NIJE potrebna za RLS. Indicirana samo za PLMD i pri sumnji na komorbidnu OSA-u.

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  *Augmentacija* -- najvažnija crvena zastavica (30--50% na DA; rizik 7--10%/god.):
  - Simptomi se javljaju *ranije u danu*
  - Simptomi se *šire* na ruke ili trup
  - Simptomi *intenzivniji* unatoč stabilnoj dozi → NE povećavajte dozu!

  *Sekundarni uzroci -- obavezno isključiti:*
  - Deficit željeza (feritin „normalan" ≠ dovoljan; cilj ≥100)
  - KBB / dijaliza, trudnoća, periferna neuropatija, hipotireoza

  *Lijekovi koji pogoršavaju RLS:* antihistaminici, SSRI/SNRI, antipsihotici, metoklopramid, mirtazapin
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== Nefarmakološke mjere

- Izbjegavati kofein, alkohol i nikotin navečer
- Umjerena tjelesna aktivnost (ne intenzivna kasno navečer)
- Masaža nogu, topla kupka ili hladni oblozi
- *Revizija terapije* -- ukinuti lijekove koji pogoršavaju RLS; zamjena antidepresiva na *bupropion* (ne pogoršava RLS)
- Izbjegavati produljeno mirovanje

=== 1. korak: Nadomjestak željeza (feritin \< 100 ng/mL) #evidence("Ia")

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Razina feritina],
    text(weight: "bold")[Preporučeni pristup],
  ),
  [*\< 75 ng/mL*], [Oralna *ILI* IV suplementacija],
  [*75--100 ng/mL*], [*SAMO IV* suplementacija (oralno neučinkovito)],
  [*≥100 ng/mL*], [Suplementacija nije indicirana],
)

*Oralno:* Željezov sulfat 325 mg (65 mg elem. Fe) + vitamin C 100--200 mg, *svaki drugi dan* (bolja apsorpcija). Natašte. Razdvojiti od antacida/IPP/levotiroksina. Kontrola feritina za 8--12 tjedana. Učinak na RLS: 4--12 tjedana.

*IV:* Ferikarbekstol maltoza ili željezov karboksimaltoza -- uputiti za infuziju.

#pearl[UVIJEK provjerite feritin prije farmakoterapije RLS-a. Feritin od 30 ng/mL je „laboratorijski normalan" ali nedovoljan za mozak. Korekcija željeza može potpuno riješiti simptome.]

=== 2. korak: Alfa-2-delta ligandi (prva linija farmakoterapije) #evidence("Ia")

#pharma-table((
  (
    [*Gabapentin*\ #text(size: 7pt)[(α2δ ligand)]],
    [300--1800 mg\ t½ 5--7 h],
    [Renalno\ 100%],
    [CNS depresanti *⚠*\ Antacidi (↓ apsorpcija)],
    [✓],
  ),
  (
    [*Pregabalin*\ #text(size: 7pt)[(α2δ ligand)]],
    [75--450 mg\ t½ 6 h],
    [Renalno\ 90%],
    [CNS depresanti *⚠*],
    [✓],
  ),
))

*Gabapentin:* Početna doza 300 mg navečer, titrirati polako. Nelinearna apsorpcija -- veće doze slabije se apsorbiraju. Doza navečer ili podijeljena (17 h + navečer). Prilagodba kod bubrežne insuficijencije.

*Pregabalin:* Linearna farmakokinetika (predvidljivije). Početna doza 75 mg navečer. Početak učinka: 1--2 tjedna.

#pearl[Gabapentin enakarbil i rotigotinski flaster *NISU registrirani u RH* (HALMED). Ne propisivati.]

#pearl[*Gabapentin i pregabalin imaju potencijal zlouporabe* — propisivati s oprezom kod pacijenata s anamnezom ovisnosti. Pratiti znakove eskalacije doze.]

=== 3. korak: Dopaminski agonisti -- PREPUSTITI SPECIJALISTU

#pearl[*PARADIGMATSKA PROMJENA (AASM 2024):* Dopaminski agonisti (pramipeksol, ropinirol) *više se NE preporučuju rutinski* -- uvjetna preporuka PROTIV zbog augmentacije (30--50%) i poremećaja kontrole impulsa (6--17%). Ako gabapentinoidi ne pomažu i feritin ≥100 → uputiti neurologu.#evidence("Ia")]

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
  [*2--4 tjedna*], [Kontrola učinka gabapentinoida. Nuspojave? Titracija doze.],
  [*8--12 tj.*], [Kontrola feritina (ako se suplementira). Cilj ≥100 ng/mL.],
  [*3 mjeseca*], [IRLS ponovo. Odgovor na terapiju? Augmentacija?],
  [*Svaka kontrola*], [Kod pacijenata na DA: „Simptomi ranije u danu? Šire se na ruke?" + kontrola impulsa.],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [Sumnja na *augmentaciju*], [Neurolog / centar], [Planirana detoksifikacija s DA],
  [*Refraktorni RLS* (≥2 terapijska pokušaja)], [Neurolog / centar], [Kombinirana terapija, IV Fe, opioid],
  [*Atipična prezentacija*], [Neurolog], [Isključiti mimike RLS-a],
  [Sumnja na *PLMD*], [Centar za spavanje], [Potrebna PSG],
  [*Teški RLS u trudnoći*], [Neurolog + ginekolog], [Ograničene opcije; prioritet: željezo],
  [*Poremećaji kontrole impulsa* na DA], [Neurolog], [Prilagodba terapije],
))

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [„To je anksioznost"], [Pitajte 4 IRLS kriterija. Ako sva prisutna = RLS],
  [DA kao prva linija], [Prvo feritin (cilj ≥100), pa *gabapentinoid*. AASM 2024 PROTIV rutinske DA],
  [Antihistaminik za „nemir u nogama"], [Antihistaminici *pogoršavaju* RLS! Nikada za nemir navečer],
  [Ne prepoznati augmentaciju], [„Ranije u danu? Šire se na ruke?" → NE povećavajte DA dozu],
  [Feritin „normalan" (30 ng/mL)], [Za RLS cilj ≥100. Feritin \< 75 → oralno/IV; 75--100 → samo IV],
  [SSRI/SNRI kod RLS pacijenta], [Pogoršavaju RLS. Alternativa: *bupropion* ili *trazodon*],
))


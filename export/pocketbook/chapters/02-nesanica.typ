// ============================================================================
// Poglavlje 2: Nesanica (Kronična nesanica)
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 2,
  title: "Nesanica (Kronična nesanica)",
  mkb: "G47.0 / F51.0",
  icsd: "Chronic Insomnia Disorder",
  color: cat-insomnia,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Ana, 48 g.*, tri mjeseca „ne može zaspati". Tegobe počele nakon smrti majke prije 6 mjeseci. Leži u krevetu od 22h, zaspi tek u 01h, budi se u 04h. Provodi 10 h u krevetu za 5 h sna. Uzima zolpidem svaku noć već 6 tjedana. „Hrčete li?" — „Malo, kaže muž." ISI 21/28.]
)
#v(3pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [Teškoća usnivanja/održavanja sna ≥3 noći/tj. × ≥3 mj. + dnevna disfunkcija],
    [*Učini*], [ISI upitnik (≥15 = intervencija). Započni CBT-I. Pitaj o hrkanju (COMISA!)],
    [*Uputi*], [Nema odgovora 4–6 tj. → psiholog/psihijatar (CBT-I). Sumnja na OSA → pulmolog],
  )
]

#v(4pt)
#kljucna-poruka[
  + *CBT-I je prva linija* — učinkovitija od lijekova dugoročno, bez nuspojava. LOM može primijeniti restrikciju sna + kontrolu podražaja.
  + *BZD i Z-lijekovi nisu prva linija* — samo kratkoročno (do 4 tj.). Posebno izbjegavati >65 g.
  + *Uvijek probir za OSA* — kod svakog nesaničara pitajte o hrkanju. COMISA u 30–50%.
  + *Higijena sna sama nije terapija* — nikada ne otpuštajte pacijenta samo s tim savjetom.
  + *Kronična nesanica = ≥3 noći/tj. × ≥3 mj. + dnevna disfunkcija.*
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [„Kada ste zadnji put spavali dobro?"], [Kronična nesanica često traje godinama neliječena],
    [„Koliko vremena provodite u krevetu?"], [9–10h za 5–6h sna = tipičan obrazac kronične nesanice],
    [„Što radite kada ne možete zaspati?"], [Ostajanje u krevetu pogoršava asocijaciju krevet-budnost],
    [„Hrčete li? Imate li pauze u disanju?"], [Pozitivno → COMISA (30–50% nesaničara ima i apneju)],
    [„Koji lijekove uzimate?"], [SSRI, kortikosteroidi, beta-blokatori, teofilin = uzročnici],
    [„Jeste li doživjeli stresan događaj u posljednjih 6 mjeseci?"], [Precipitirajući čimbenik → akutna nesanica koja kronificira],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

Kronična nesanica je subjektivna teškoća usnivanja, održavanja sna ili preranog buđenja unatoč adekvatnoj prilici za spavanje. Prevalencija: 10–15% opće populacije; u praksi s 2.000 pacijenata: 200–300 nesaničara.

*Ključni simptomi:*
- *Poteškoće s uspavljivanjem, održavanjem sna ili prerano buđenje* ≥3 noći/tjedan
- Tegobe traju *≥3 mjeseca*
- *Dnevne posljedice:* umor, poteškoće s koncentracijom, promjene raspoloženja

*Podržavajući znakovi:*
- Prekomjerno vrijeme u krevetu ("pokušava nadoknaditi san")
- Pojačana aktivacija pred spavanje (ruminacije, anksioznost)
- Nepravilna higijena spavanja (ekrani, kofein navečer)
- Komorbidna depresija ili anksioznost

*Pitanja za anamnezu:*
+ „Kada ste zadnji put spavali dobro?" — kronična nesanica često traje godinama
+ „Što radite kada ne možete zaspati?" — otkriva kompenzatorne mehanizme
+ „Koliko vremena provodite u krevetu?" — nesaničari: 9–10 h za 5–6 h sna
+ „Hrčete li? Imate li pauze u disanju?" — *obavezno* za isključivanje OSA
+ „Koji lijekove uzimate?" — SSRI, kortikosteroidi, beta-blokatori, teofilin

*Diferencijalni tragovi:*
- Pospanost dominantna (ne umor) → razmisliti o OSA ili hipersomniji
- Simptomi samo uz pomaknut raspored → cirkadijani poremećaj
- Glasno hrkanje → isključiti COMISA

// === Probir i dijagnostika ===
== Probir i dijagnostika

*Insomnia Severity Index (ISI)* — primarni alat (7 pitanja, 2–3 min):

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[ISI zbroj],
    text(weight: "bold")[Interpretacija],
  ),
  [0–7], [Nema klinički značajne nesanice],
  [8–14], [Subklinička (blaga) nesanica],
  [*15–21*], [*Umjerena — indicirana intervencija*],
  [*22–28*], [*Teška — hitna intervencija*],
)

#text(size: 8pt, fill: color-gray)[Klinički značajan odgovor = pad ≥8 bodova; remisija = ISI \< 8.]

*Dnevnik spavanja* (2 tjedna) — zlatni standard subjektivne procjene, neophodan za CBT-I.

*Isključiti:* OSA, RLS, cirkadijane poremećaje, poremećaj rada u smjenama. Evaluirati psihijatrijske komorbiditete.

*PSG* — NIJE indicirana za rutinsku nesanicu. Indicirana samo pri sumnji na OSA, PLMD ili parasomnije.

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  *Isti dan:* Suicidalna ideacija uz tešku nesanicu s depresijom → psihijatar

  - *Iznenadna teška nesanica bez uzroka* u starije osobe → delirijum, neurološki događaj
  - *Pretjerana dnevna pospanost* (ne umor) uz nesanicu → COMISA
  - *Glasno hrkanje + svjedočeni apneički zastoji* → OSA
  - *Parasomnije* (hodanje u snu, vikanje) → druga obrada
  - *Dugotrajna BZD/Z-lijek eskalacija* → ovisnost, postupna redukcija
]

#v(6pt)
#text(weight: "bold", fill: color-teal, size: 9pt)[Lijekovi koji uzrokuju/pogoršavaju nesanicu]
#v(3pt)

#set text(size: 8pt)
#table(
  columns: (1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Skupina],
    text(weight: "bold")[Primjeri],
  ),
  [*SSRI (aktivirajući)*], [fluoksetin, sertralin (osobito jutarnja doza)],
  [*Kortikosteroidi*], [prednizon, metilprednizolon, deksametazon],
  [*Beta-blokatori*], [propranolol, metoprolol, atenolol],
  [*Teofilin/bronhodilatatori*], [teofilin, salbutamol],
  [*Stimulansi*], [metilfenidat, modafinil, kofein],
  [*Levotiroksin*], [previsoka doza — provjeriti TSH],
  [*Interferoni*], [interferon-alfa],
  [*Diuretici*], [nikturija → fragmentacija sna],
)

=== Akutna (kratkotrajna) nesanica

Nesanica koja traje *\< 3 mjeseca*, najčešće precipitirana stresom, bolešću ili promjenom okoline. U većini slučajeva prolazi spontano. Intervencija LOM-a: higijena sna, edukacija, kratkoročni hipnotik (do 2 tjedna) ako je potreban. *Ključno:* prevenirati kronifikaciju — ako traje \> 4 tjedna, započeti CBT-I elemente.

#pearl[*Kada CBT-I nije dostupan, trazodon 25–50 mg i melatonin 2 mg su sigurne opcije u Hrvatskoj* — osobito za starije pacijente i one kod kojih BZD treba izbjegavati.]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== Prva linija: CBT-I

*CBT-I je jedina terapija s razinom dokaza Ia* za kroničnu nesanicu — prva linija prema svim smjernicama (AASM 2021, ACP 2016, ESRS 2017, NICE).#evidence("Ia")

#set text(size: 8.5pt)
#table(
  columns: (0.8fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Komponenta],
    text(weight: "bold")[Opis],
  ),
  [*Restrikcija sna*], [Skratiti vrijeme u krevetu na stvarno vrijeme spavanja (npr. 00–06h)],
  [*Kontrola podražaja*], [Krevet = samo za spavanje. Ne zaspiš za 15–20 min → ustani],
  [*Kognitivna restrukturacija*], [Mijenjanje katastrofizirajućih misli o snu],
  [*Relaksacija*], [Progresivna mišićna relaksacija, dijafragmalno disanje],
  [*Higijena sna*], [Sastavni dio CBT-I — *nikad* kao samostalna terapija],
)

*Restrikcija sna — upute za LOM:*
+ Iz dnevnika spavanja izračunajte *ukupno vrijeme spavanja* (UVS), npr. 5,5 h
+ Prozor za spavanje = UVS, ali *minimum 5 h* (npr. 00:30–06:00)
+ Tjedan 1: strogo pridržavanje. Dnevna pospanost je *očekivana* i prolazna
+ Tjedno prilagođavanje: efikasnost sna (ES) >85% → dodaj 15 min; ES \< 80% → skrati 15 min
+ Cilj: ES ≥85% uz 7–8 h u krevetu

#pearl[LOM može primijeniti restrikciju sna + kontrolu podražaja i *bez* formalnog CBT-I treninga — učinak je značajan i samo s te dvije komponente.#evidence("Ib")]

#v(3pt)
#crvena-zastavica[
  *Oprez pri restrikciji sna:* Kontraindicirana ili zahtijeva poseban oprez kod *bipolarnog poremećaja* (rizik manije), *epilepsije* (snižen prag napadaja) i pacijenata u *sigurnosno-kritičnim zanimanjima* tijekom početne faze (povećana pospanost).
]

*Dostupnost u HR:* Psiholozi s CBT-I edukacijom ograničeni na Zagreb i veće gradove. dCBT-I ima jednaku razinu dokaza, ali većina aplikacija je na engleskom.

=== Farmakoterapija — druga linija

Indicirani: (1) kratkoročno dok se čeka CBT-I; (2) uz CBT-I kod teške nesanice; (3) kada CBT-I nije dostupan/pacijent ga ne tolerira.

*Lijekovi dostupni u HR* (provjera: HALMED, veljača 2026):

// 5-column pharmacology table: Lijek | Doza/t½ | Metabolizam | Interakcije | HR
#pharma-table((
  // Zolpidem
  (
    [*Zolpidem*\ #text(size: 7pt)[(Z-lijek)]],
    [5–10 mg\ t½ 2,5 h\ #text(size: 7pt)[(žene: 5 mg)]],
    [Hepat.\ CYP3A4],
    [CNS depresanti *✖*\ CYP3A4 inhib. *⚠*\ Alkohol *✖*],
    [✓],
  ),
  // Melatonin PR
  (
    [*Melatonin*\ #text(size: 7pt)[(prod. otpušt.)]],
    [2 mg\ t½ 40–60 min\ #text(size: 7pt)[(>55 god.)]],
    [Hepat.\ CYP1A2],
    [Fluvoksamin *⚠*],
    [✓],
  ),
  // Trazodon
  (
    [*Trazodon*\ #text(size: 7pt)[(off-label)]],
    [25–100 mg\ t½ 5–9 h],
    [Hepat.\ CYP3A4],
    [MAOI *✖*\ QTc lijekovi *⚠*],
    [✓],
  ),
  // Hidroksizin
  (
    [*Hidroksizin*],
    [25–50 mg\ t½ 20 h],
    [Hepat.\ CYP razni],
    [Antikolinergici *⚠*],
    [✓],
  ),
  // Benzodiazepini
  (
    text(fill: color-red)[*BZD*\ #text(size: 7pt)[(izbjegavati!)]],
    [—\ t½ varijab.],
    [Hepat./Ren.],
    [CNS depresanti *✖*\ Opioidi *✖*],
    [✓],
  ),
))

#v(4pt)
#pearl[Eszopiclone, suvorexant, lemborexant, daridorexant, ramelteon, doxepin (3–6 mg) — *NISU dostupni u Hrvatskoj*. Ne propisivati i ne obećavati pristup.]

=== Posebne populacije

*Stariji (>65 g.):* BZD i Z-lijekovi na Beers listi (padovi, frakture, delirijum). Prva linija: CBT-I; ako je nužan lijek → trazodon 25–50 mg ili melatonin 2 mg.

*Trudnoća:* CBT-I je jedina sigurna opcija. Zolpidem i BZD — kontraindicirani (kategorija C). Melatonin — nedovoljno podataka.

*COMISA:* Prisutna u *30–50% nesaničara*. Liječenje samo nesanice bez dijagnoze OSA = suboptimalan rezultat. *Kod svakog pacijenta pitajte o hrkanju.*

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
  [*2 tjedna*], [Pregled dnevnika spavanja. Prilagodba prozora za spavanje.],
  [*4–6 tjedana*], [Ponoviti ISI. Ako ISI ≥15 i nema napretka → uputiti.],
  [*3 mjeseca*], [Ponoviti ISI. Cilj: ISI \< 8 (remisija) ili pad ≥8 bodova.],
  [*Farmakoterapija*], [Zolpidem: preispitati svaka 4 tjedna. Trazodon: može dulje.],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [ISI ≥15, nema odgovora 4–6 tj.], [Psiholog/psihijatar\ (CBT-I)], [Strukturirani CBT-I program],
  [Sumnja na OSA (hrkanje, apneje, BMI >30)], [Centar za spavanje /\ pulmolog], [PSG, titracija CPAP-a],
  [Ovisnost o BZD/Z-lijekovima], [Psihijatar], [Postupna redukcija uz nadzor],
  [Rezistentna nesanica >3 mj.], [Centar za spavanje], [Skriveni komorbiditeti],
  [Teška depresija, bipolarni, PTSP], [Psihijatar], [Optimizacija psihofarmakoterapije],
  [Parasomnije / atipično ponašanje], [Neurolog / Centar], [Potrebna PSG],
))

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [BZD kao prva linija], [CBT-I je prva linija; lijekovi kratkoročno ili kao most],
  [„Higijena sna" kao jedini savjet], [Higijena sna sama NIJE dovoljna za kroničnu nesanicu],
  [Ignoriranje OSA kod nesanice], [Uvijek pitati o hrkanju — COMISA u 30–50%],
  [Zolpidem >4 tjedna], [Kratkoročna terapija; preispitati svaka 4 tjedna],
  [„Nesanica je od depresije"], [Liječiti paralelno — nesanica se rijetko povlači sama],
  [BZD u starijih], [Beers kriteriji; razmotriti trazodon ili CBT-I],
  [Dijagnoza bez dnevnika spavanja], [Dnevnik (2 tj.) je temeljni dijagnostički alat],
  [„Ostanite u krevetu dok ne zaspite"], [Suprotno: ustanite za 15–20 min (kontrola podražaja)],
))


// ============================================================================
// Poglavlje 7: NREM parasomnije
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 7,
  title: "NREM parasomnije",
  mkb: "F51.3 / F51.4 / G47.51 / G47.59",
  icsd: "Disorders of Arousal from NREM Sleep",
  color: cat-parasomnia,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Petra, 28 g.*, cimerica je dovodi jer „hoda po stanu noću, oči otvorene, ne reagira". Epizode u prvoj trećini noći, bez sjećanja. Uzima zolpidem 10 mg za nesanicu. Nedavno pala i udarila glavu.]
)
#v(4pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [Hodanje u snu, noćni strahovi ili konfuzna buđenja — prva trećina noći, oči otvorene, amnezija. Djeca: benigno. Odrasli: novi početak → obrada],
    [*Učini*], [Sigurnost (zaključaj vrata/prozore). Isključi okidače: OSA, zolpidem, deprivacija sna. Djeca: planirana buđenja],
    [*Uputi*], [Odrasli s novonastalim parasomnjama → neurolog (OSA, epilepsija, RBD). Djeca: samo ako perzistira ili opasno],
  )
]

#v(6pt)
#kljucna-poruka[
  + *Tri podtipa — isti mehanizam:* nepotpuno buđenje iz N3 sna. U djece česte i benigne, u odraslih zahtijevaju obradu.
  + *Tri pitanja za diferencijalnu dijagnozu:* Kada noću? Oči otvorene? Sjeća li se? — razlikuje NREM od RBD-a.
  + *Novonastalo mjesečarenje u odraslog ≠ normalno* — isključiti OSA, zolpidem, epilepsiju.
  + *Sigurnost je prva intervencija* — zaključati vrata, ukloniti opasne predmete. Klonazepam samo za teške slučajeve.
  + *Djeca prerastu NREM parasomnije* — razuvjeravanje roditelja i edukacija su često jedina potrebna intervencija.
  + *SRED = parasomnije s jedenjem u snu.* Zolpidem je najčešći uzrok. Ukinuti lijek, osigurati kuhinju.
]

// === Definicija i patofiziologija ===
== Definicija i patofiziologija

NREM parasomnije su spektar triju srodnih poremećaja koji proizlaze iz *nepotpunog buđenja iz dubokog (N3) sna* — mozak ostaje između sna i budnosti: tijelo se pokreće, ali svjesnost i pamćenje ostaju „isključeni".

*Tri podtipa:*
- *Somnambulizam (mjesečarenje)* — hodanje u snu s otvorenim očima, amnezija
- *Noćni strahovi (pavor nocturnus)* — naglo buđenje s krikom, tahikardija, znojenje, nekonzolabilan, amnezija. *Nije noćna mora*
- *Konfuzna buđenja* — dezorijentiranost pri buđenju iz dubokog sna, ponekad neprimjereno ponašanje, amnezija

*Prevalencija:*

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1fr, 1fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Poremećaj],
    text(weight: "bold")[Djeca],
    text(weight: "bold")[Odrasli],
  ),
  [Somnambulizam], [10–17% (vrh: 8–12 g.)], [1–4%],
  [Noćni strahovi], [1–6% (vrh: 5–7 g.)], [< 1%],
  [Konfuzna buđenja], [Do 17%], [2–4%],
)
#set text(size: 9.5pt)

// === Kako prepoznati? ===
== Kako prepoznati?

*Kritični znakovi:*
- Hodanje u snu — složene radnje bez svjesnosti
- Noćni strahovi — nagle epizode vrištanja, autonomna aktivacija, amnezija
- Konfuzna buđenja — dezorijentiranost, agitacija

*Podržavajući znakovi:*
- Epizode u *prvoj trećini noći* (dominantan N3 san)
- Pozitivna obiteljska anamneza
- Okidači: deprivacija sna, alkohol, stres

// === Probir i dijagnostika ===
== Probir i dijagnostika

*Detaljna anamneza — temelj dijagnoze.* Ključna pitanja:
+ „U koje doba noći se to događa?" — Prva trećina = NREM; zadnja trećina = RBD
+ „Jesu li oči otvorene ili zatvorene?"
+ „Sjeća li se nečega ujutro?"
+ „Može li se osoba utješiti?" — Noćni strahovi: ne; noćna mora: da
+ „Koliko traju i koliko su česte?" — Stereotipne kratke (< 60 s) = epilepsija
+ „Hrče li? Ima li apneje?" — Obavezno za sve odrasle (OSA je čest trigger)
+ „Koji lijekove uzima?" — Zolpidem, litij, sedativi

*Video snimka:* Zamolite partnera/roditelja da snimi epizodu mobilnim telefonom.

*Probir za OSA:* Kod svakog odraslog s novonastalim NREM parasomnijama — barem STOP-Bang upitnik.

*Video-PSG* indicirana kada: dijagnostička nesigurnost, ozljede, stereotipne kratke epizode (sumnja na epilepsiju), novonastale parasomnije u odraslog.

#text(size: 8pt, fill: color-gray)[Rutinska PSG NIJE potrebna za tipične dječje NREM parasomnije s jasnom kliničkom slikom.]

// === Crvene zastavice ===
#v(4pt)
#crvena-zastavica[
  - *Novonastalo mjesečarenje u odraslog* — obavezno isključiti: OSA, noćnu epilepsiju, lijekove (zolpidem!), neurološku bolest
  - *Ozljede tijekom epizoda* — padovi, rezanje, napuštanje kuće
  - *Nasilno/agresivno ponašanje* — diferencijalno razmotriti RBD (stariji muškarci)
  - *Stereotipne, kratke epizode (< 60 s), uvijek istog oblika* → sumnja na noćnu epilepsiju (SHE)
  - *Više epizoda u jednoj noći* — NREM parasomnije se obično javljaju jednom; višestruke → epilepsija
  - *Novonastale parasomnije u starijeg pacijenta (> 50 g.)* → RBD ili epilepsija
  - *Noćno jedenje uz amneziju* — SRED, osobito ako pacijent uzima zolpidem → ukinuti lijek, osigurati kuhinju
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== 1. Mjere sigurnosti — UVIJEK PRVO

- *Zaključati ulazna vrata i prozore* — ključ na nedostupnom mjestu
- *Alarmi na vratima* spavaće sobe
- *Ukloniti opasne predmete* iz spavaće sobe i hodnika
- *Spavaća soba u prizemlju* — izbjegavati stepenice
- *Partner/ukućani:* NE pokušavati probuditi osobu na silu — samo osigurati sigurnost

=== 2. Otklanjanje provocirajućih čimbenika

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Okidač],
    text(weight: "bold")[Intervencija],
  ),
  [*Deprivacija sna*], [Redovit raspored, dovoljna količina sna za dob],
  [*Alkohol*], [Izbjegavanje, posebno navečer],
  [*Lijekovi*], [Zolpidem (najčešći!), litij, antihistaminici — preispitati],
  [*OSA*], [Dijagnostika i liječenje može eliminirati parasomnije],
  [*Stres*], [Tehnike relaksacije; ako potrebno → psiholog],
)
#set text(size: 9.5pt)

=== 3. Planirana buđenja (djeca)

Za djecu s predvidljivim vremenskim obrascem: *15–30 min PRIJE uobičajenog vremena epizode*, roditelj nježno probudi dijete. Primjenjivati svaku noć 2–4 tjedna, zatim postupno ukidati.

=== 4. Farmakoterapija — samo teški i opasni slučajevi

#pharma-table((
  // Klonazepam
  (
    [*Klonazepam*\ #text(size: 7pt)[(prva linija)]],
    [0,25–2 mg\ t½ 30–40 h],
    [Hepat.\ CYP3A4],
    [CNS depresanti *R*\ Opioidi *R*\ Alkohol *R*],
    [✓],
  ),
  // Melatonin
  (
    [*Melatonin*],
    [2–6 mg\ t½ 40–60 min],
    [Hepat.\ CYP1A2],
    [Fluvoksamin *Y*],
    [✓],
  ),
  // Trazodon
  (
    [*Trazodon*\ #text(size: 7pt)[(off-label)]],
    [25–100 mg\ t½ 5–9 h],
    [Hepat.\ CYP3A4],
    [MAOI *R*\ QTc lijekovi *Y*],
    [✓],
  ),
))

#pearl[Za razliku od nesanice, klonazepam u niskim dozama za parasomnije ima dugogodišnje iskustvo sigurne primjene (~80% učinkovitost). Tolerancija i eskalacija su rijetke za ovu specifičnu indikaciju.]

=== 5. Posebne napomene za djecu

- *Razuvjeravanje roditelja* je najvažnija intervencija — benigno, dijete prerasta (većina prestaje do puberteta), ne ukazuje na psihijatrijsku bolest
- Ne pokušavati buditi — samo sigurnost
- Dovoljno sna za dob (deprivacija je najčešći trigger!)
- Farmakoterapija samo iznimno — kod teških, učestalih epizoda s ozljedama

=== SRED (poremećaj hranjenja u snu)

SRED je NREM parasomnije — epizode nehotičnog jedenja iz dubokog sna uz *amneziju*. Pacijent ustaje, odlazi u kuhinju, jede neobične kombinacije hrane — ne sjeća se. Saznaje od partnera ili po tragovima u kuhinji.

*Najčešći uzrok:* *Zolpidem* — do 5% korisnika. Svaki pacijent na zolpidemu s neobjašnjivim debljanjem ili tragovima noćnog jedenja → evaluirati za SRED.

*SRED vs. NES:* SRED = smanjena svijest, amnezija, bizarno jedenje. NES (sindrom noćnog jedenja) = puna budnost, sjećanje, normalna hrana. Liječenje potpuno različito.

*Intervencija LOM-a:*
+ *Ukinuti zolpidem* (postupno kroz 1–2 tjedna) — u većini slučajeva potpuno rješava SRED
+ *Osigurati kuhinju:* zaključati, ukloniti noževe/sredstva za čišćenje, iskopčati štednjak
+ Za nesanicu: prijeći na trazodon 25–50 mg ili melatonin 2 mg
+ Ako perzistira nakon ukidanja zolpidema → uputiti specijalistu

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
  [*2–4 tjedna*], [Provjera učinka sigurnosnih mjera i otklanjanja okidača],
  [*1–3 mjeseca*], [Učestalost epizoda? Ako farmakoterapija → procjena odgovora],
  [*6–12 mjeseci*], [Djeca: praćenje do spontane rezolucije. Odrasli: kontrola okidača],
)
#set text(size: 9.5pt)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [Novonastale parasomnije u odraslog (posebno > 40 g.)], [Neurolog / Centar za spavanje], [Isključiti OSA, epilepsiju; PSG],
  [Ozljede tijekom epizoda], [Centar za spavanje], [Video-PSG; farmakoterapija],
  [Stereotipne kratke (< 60 s), višestruke epizode], [Neurolog (epileptolog)], [Sumnja na noćnu epilepsiju; video-EEG],
  [Dijagnostička nesigurnost (NREM vs. RBD vs. epilepsija)], [Centar za spavanje], [Video-PSG s proširenim EEG],
  [Sumnja na komorbidnu OSA], [Pulmolog / Centar], [PSG; CPAP može eliminirati parasomnije],
  [Rezistentne parasomnije unatoč nefarmakol. mjerama + klonazepamu], [Centar za spavanje], [Reevaluacija; skriveni trigger],
  [SRED refrakteran na ukidanje zolpidema], [Centar za spavanje], [Topiramat; video-PSG],
))

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [Zamijeniti NREM parasomnije s RBD-om], [NREM = prva trećina, oči otvorene, amnezija, djeca; RBD = zadnja trećina, oči zatvorene, sjećanje, stariji],
  [Ne tražiti OSA kod novonastalih parasomnija u odraslog], [OSA fragmentira san — liječenje OSA može eliminirati parasomnije],
  [Pokušati probuditi osobu tijekom epizode], [Samo osigurati sigurnost; prisilno buđenje provocira agitaciju],
  [Ne provjeriti lijekove], [Zolpidem je čest uzrok NREM parasomnija u odraslih],
  [Zamijeniti noćne strahove s noćnim morama], [Strahovi: prva trećina, nekonzolabilan, amnezija. More: zadnja trećina, sjeća se, traži utjehu],
  [Propisati lijekove bez otklanjanja triggera], [Najprije identificirati okidače; farmakoterapija tek ako nefarmakološke mjere ne pomognu],
  [Uznemiriti roditelje tipičnih noćnih strahova], [Razuvjeriti: benigno, dijete preraste],
))


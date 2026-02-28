// ============================================================================
// Dodatak F — Korisni izvori
// ============================================================================

#import "../template.typ": *

#appendix-title(letter: "F", title: "Korisni izvori")

#set text(size: 8pt)

#text(fill: color-gray, style: "italic")[Odabrani resursi za produbljivanje znanja, kliničku praksu i edukaciju pacijenata. Svi mrežni izvori pristupljeni u veljači 2026.]

#v(8pt)

// ─── 1. Smjernice i klasifikacije ──────────────────────────────────────
== Smjernice i klasifikacije

#v(2pt)

*AASM* --- American Academy of Sleep Medicine #h(1fr) #text(fill: color-gray, size: 7pt)[aasm.org]\
#text(fill: color-gray, size: 7.5pt)[Kliničke smjernice za sve poremećaje spavanja. Zlatni standard.]

#v(3pt)

*ICSD-3-TR (2023)* --- International Classification of Sleep Disorders, 3rd Ed., Text Revision\
#text(fill: color-gray, size: 7.5pt)[Dijagnostički kriteriji za sve poremećaje spavanja.]

#v(3pt)

*ESRS* --- European Sleep Research Society #h(1fr) #text(fill: color-gray, size: 7pt)[esrs.eu]\
#text(fill: color-gray, size: 7.5pt)[Europske smjernice; ESRS guideline za nesanicu (Riemann 2017).]

#v(8pt)

// ─── 2. Regulatorne agencije ────────────────────────────────────────────
== Regulatorne agencije

#v(2pt)

*HALMED* --- Agencija za lijekove i medicinske proizvode #h(1fr) #text(fill: color-gray, size: 7pt)[halmed.hr]\
#text(fill: color-gray, size: 7.5pt)[Registar lijekova u RH. Provjera dostupnosti i indikacija.]

#v(3pt)

*EMA* --- European Medicines Agency #h(1fr) #text(fill: color-gray, size: 7pt)[ema.europa.eu]\
#text(fill: color-gray, size: 7.5pt)[Europska regulativa za lijekove.]

#v(8pt)

// ─── 3. Edukacijski resursi ─────────────────────────────────────────────
== Edukacijski resursi

#v(2pt)

*Mayo Clinic Sleep Medicine Podcasts*\
#text(fill: color-gray, size: 7.5pt)[YouTube serija, 46 epizoda (8 sezona). Klinički orijentirano --- pokriva RLS, nesanicu, OSA-u, RBD, parasomnije, narkolepsiju, cirkadijane poremećaje. Izvrstan resurs za produbljivanje znanja.]\
#text(fill: color-teal, size: 7pt)[youtube.com/\@MayoProc #sym.arrow.r Sleep Medicine Podcasts playlist]

#v(3pt)

*AASM Talking Sleep Podcast* #h(1fr) #text(fill: color-gray, size: 7pt)[aasm.org/talking-sleep-podcast]\
#text(fill: color-gray, size: 7.5pt)[Mjesečni podcast o novostima u medicini spavanja.]

#v(3pt)

*SleepEducation.org* --- AASM-ov portal za pacijente\
#text(fill: color-gray, size: 7.5pt)[Korisno za edukaciju pacijenata na engleskom.]

#v(8pt)

// ─── 4. Ključni časopisi ────────────────────────────────────────────────
== Ključni časopisi

#v(2pt)

#table(
  columns: (1.3fr, 1.2fr, 1.5fr),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  align: left,
  inset: (x: 5pt, y: 3pt),
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Časopis],
    text(weight: "bold")[Mrežno mjesto],
    text(weight: "bold")[Napomena],
  ),
  [*JCSM*], [jcsm.aasm.org], [Službeni časopis AASM-a. Sve smjernice objavljene ovdje.],
  [*Sleep*], [academic.oup.com/sleep], [Vodeći istraživački časopis za spavanje.],
  [*Sleep Medicine*], [Elsevier], [Europski klinički časopis.],
  [*Sleep Medicine Reviews*], [Elsevier], [Pregledni članci najviše razine dokaza.],
)

#v(8pt)

// ─── 5. Upitnici i alati ────────────────────────────────────────────────
== Upitnici i alati

#v(2pt)

#table(
  columns: (1.2fr, 2fr),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  align: left,
  inset: (x: 5pt, y: 3pt),
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Alat],
    text(weight: "bold")[Napomena],
  ),
  [*ESS* (Epworthova ljestvica)], [Validirana hrvatska verzija dostupna. Vidi Dodatak E.],
  [*ISI* (Insomnia Severity Index)], [Validirana hrvatska verzija. Vidi Dodatak E.],
  [*STOP-BANG*], [Probir za OSA. Vidi Dodatak E.],
  [*RBDSQ*], [Probir za RBD. Vidi Dodatak E.],
  [*IRLS*], [Procjena težine RLS-a. Vidi Dodatak E.],
  [*Dnevnik spavanja*], [Vidi Dodatak B.],
)

#v(8pt)

// ─── 6. Organizacije u Hrvatskoj ────────────────────────────────────────
== Organizacije u Hrvatskoj

#v(2pt)

*HDIS* --- Hrvatsko društvo za istraživanje spavanja\
#text(fill: color-gray, size: 7.5pt)[Kontakt putem Hrvatskog liječničkog zbora (hlz.hr).]

#v(3pt)

*Centri za medicinu spavanja*\
#text(fill: color-gray, size: 7.5pt)[KBC Zagreb, KBC Rijeka, KBC Split --- polisomnografija i MSLT.]

#v(4pt)

#text(size: 7pt, fill: color-gray, style: "italic")[Svi navedeni mrežni izvori bili su dostupni u vrijeme pripreme ovog priručnika (veljača 2026). Za ažurirane poveznice posjetite stranicu autora.]

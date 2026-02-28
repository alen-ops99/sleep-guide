// ============================================================================
// Dodatak A — Brzi pregled farmakoterapije
// ============================================================================

#import "../template.typ": *

#appendix-title(
  letter: "A",
  title: "Brzi pregled farmakoterapije",
)

#set text(size: 7.5pt)

#table(
  columns: (1.1fr, 1fr, 1.1fr, 0.55fr, 1.5fr),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  align: left,
  inset: (x: 4pt, y: 3.5pt),
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Indikacija],
    text(weight: "bold")[Lijek],
    text(weight: "bold")[Doza],
    text(weight: "bold")[t½],
    text(weight: "bold")[Ključni oprez],
  ),

  // 1. Zolpidem
  [Nesanica],
  [*Zolpidem*],
  [5 mg → max 10 mg],
  [2,5 h],
  [≤4 tj. Ne u starijih (>65 g.)],

  // 2. Melatonin PR
  [Nesanica (>55 g.)],
  [*Melatonin PR*],
  [2 mg],
  [3,5–4 h],
  [Jedini sigurni za starije],

  // 3. Trazodon
  [Nesanica],
  [*Trazodon*],
  [25 mg → 100 mg],
  [5–9 h],
  [Start low, go slow. QTc oprez],

  // 4. Hidroksizin
  [Nesanica],
  [*Hidroksizin*],
  [25 mg → 50 mg],
  [20 h],
  [Antikolinergički. Ne u starijih],

  // 5. Melatonin (DSWPD)
  [DSWPD],
  [*Melatonin*],
  [0,5 mg → 3 mg u 18–19h],
  [40–60 min],
  [Niska doza, rano navečer. Vrijeme > doza],

  // 6. Gabapentin
  [RLS],
  [*Gabapentin*],
  [100 mg → 300–600 mg],
  [5–7 h],
  [Titrirati tjedno. Oprez: bubrezi],

  // 7. Pregabalin
  [RLS],
  [*Pregabalin*],
  [25 mg → 75–150 mg],
  [6 h],
  [Alternativa gabapentinu],

  // 8. Željezo
  [RLS],
  [*Željezo (Fe²⁺)*],
  [65 mg + vit. C],
  [—],
  [Cilj: feritin ≥100. Natašte],

  // 9. Prazosin
  [Noćne more (PTSP)],
  [*Prazosin*],
  [1 mg → 2–6 mg],
  [2–3 h],
  [RR mjeriti! Ortostatska hipotenzija],

  // 10. Melatonin (RBD)
  [RBD],
  [*Melatonin*],
  [3 mg → 6–12 mg],
  [40–60 min],
  [Sigurniji od klonazepama],

  // 11. Buspiron
  [Bruksizam (SSRI)],
  [*Buspiron*],
  [5 mg → 10 mg],
  [2–3 h],
  [Samo ako SSRI uzrok],

  // 12. Doxepin (low-dose)
  [Nesanica],
  [*Doxepin*#text(size: 6pt)[ (niska doza)]],
  [3–6 mg],
  [15 h],
  [Jedini s FDA odobrenjem za nesanicu u niskoj dozi. *Nedostupan u HR* (✗)],

  // 13. DORAs
  [Nesanica],
  [*DORA*#text(size: 6pt)[ (suvorexant, lemborexant)]],
  [10–20 mg],
  [12–17 h],
  [Dualni antagonisti oreksina. *Nedostupni u HR* (✗)],

  // 14. IV željezo
  [RLS],
  [*Željezo IV*#text(size: 6pt)[ (ferikarb. maltoza)]],
  [500–1000 mg inf.],
  [—],
  [Za feritin 75–100 (oralno neučinkovito). Infuzija u bolnici],

  // 15. Klonazepam (RBD/parasomnije)
  [RBD / Parasomnije],
  [*Klonazepam*],
  [0,25–2 mg],
  [30–40 h],
  [2. linija za RBD; 1. linija za NREM parasomnije. Isključiti OSA!],
)

#v(8pt)

// Golden rules box
#block(
  width: 100%,
  inset: (x: 10pt, y: 8pt),
  radius: 3pt,
  stroke: (left: 3pt + color-teal, top: 1.5pt + color-teal),
  fill: color-teal.lighten(93%),
  [
    #text(weight: "bold", fill: color-teal, size: 8pt)[ZLATNA PRAVILA FARMAKOTERAPIJE]
    #v(4pt)
    #set text(size: 7.5pt)
    + *Start low, go slow* — uvijek početi s najnižom dozom, titrirati postupno
    + *Stariji (>65 g.)* — izbjegavati BZD, Z-lijekove, antikolinergike (Beers kriteriji)
    + *Nikada sedative bez isključenja OSA-e* — uvijek STOP-BANG prije hipnotika
    + *Prije svakog hipnotika* — isključite OSA-u (STOP-BANG) i RLS (feritin)
    + *Revizija lijekova* — SSRI, antihistaminici, beta-blokatori i opioidi česti su uzročnici poremećaja sna
  ]
)

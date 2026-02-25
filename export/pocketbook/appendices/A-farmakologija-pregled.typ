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
  columns: (1.1fr, 1fr, 1.1fr, 1.5fr),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  align: left,
  inset: (x: 4pt, y: 3.5pt),
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Indikacija],
    text(weight: "bold")[Lijek],
    text(weight: "bold")[Početna → ciljna doza],
    text(weight: "bold")[Ključni oprez],
  ),

  // 1. Zolpidem
  [Nesanica],
  [*Zolpidem*],
  [5 mg → max 10 mg],
  [≤4 tj. Ne u starijih (>65 g.)],

  // 2. Melatonin PR
  [Nesanica (>55 g.)],
  [*Melatonin PR*],
  [2 mg],
  [Jedini sigurni za starije],

  // 3. Trazodon
  [Nesanica],
  [*Trazodon*],
  [25 mg → 100 mg],
  [Start low, go slow. QTc oprez],

  // 4. Hidroksizin
  [Nesanica],
  [*Hidroksizin*],
  [25 mg → 50 mg],
  [Antikolinergički. Ne u starijih],

  // 5. Melatonin (DSWPD)
  [DSWPD],
  [*Melatonin*],
  [0,5 mg → 3 mg u 18–19h],
  [Niska doza, rano navečer. Vrijeme > doza],

  // 6. Gabapentin
  [RLS],
  [*Gabapentin*],
  [100 mg → 300–600 mg],
  [Titrirati tjedno. Oprez: bubrezi],

  // 7. Pregabalin
  [RLS],
  [*Pregabalin*],
  [25 mg → 75–150 mg],
  [Alternativa gabapentinu],

  // 8. Željezo
  [RLS],
  [*Željezo (Fe²⁺)*],
  [65 mg + vit. C],
  [Cilj: feritin ≥100. Natašte],

  // 9. Prazosin
  [Noćne more (PTSP)],
  [*Prazosin*],
  [1 mg → 2–6 mg],
  [RR mjeriti! Ortostatska hipotenzija],

  // 10. Melatonin (RBD)
  [RBD],
  [*Melatonin*],
  [3 mg → 6 mg],
  [Sigurniji od klonazepama],

  // 11. Buspiron
  [Bruksizam (SSRI)],
  [*Buspiron*],
  [5 mg → 10 mg],
  [Samo ako SSRI uzrok],
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
  ]
)

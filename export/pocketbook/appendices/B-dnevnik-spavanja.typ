// ============================================================================
// Dodatak B — Dnevnik spavanja (predložak)
// ============================================================================

#import "../template.typ": *

#appendix-title(
  letter: "B",
  title: "Dnevnik spavanja — predložak za pacijenta",
)

#v(2pt)
#align(center)[
  #text(size: 8pt, fill: color-gray, style: "italic")[Ispunjavajte svako jutro odmah nakon buđenja, 14 dana.]
]
#v(4pt)

// Empty cell with fixed height for handwriting space
#let ecell = table.cell[#v(5.5mm)]

#set text(size: 7pt)

#table(
  columns: (0.55fr, 0.7fr, 0.7fr, 0.85fr, 0.75fr, 0.7fr, 0.55fr, 0.7fr),
  align: center + horizon,
  inset: (x: 2.5pt, y: 2pt),
  stroke: 0.4pt + rgb("#d1d5db"),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else { white },

  // Header row
  table.header(
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Dan /\ datum],
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Lijeganje],
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Usnivanje],
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Buđenja\ (br. + min)],
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Konačno\ buđenje],
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Ustajanje],
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Kvaliteta\ (1–5)],
    text(weight: "bold", fill: color-teal, size: 6.5pt)[Dnevna\ pospanost\ (1–5)],
  ),

  // Day 1
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 2
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 3
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 4
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 5
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 6
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 7
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 8
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 9
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 10
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 11
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 12
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 13
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
  // Day 14
  ecell, ecell, ecell, ecell, ecell, ecell, ecell, ecell,
)

#v(4pt)

#block(
  width: 100%,
  inset: (x: 8pt, y: 5pt),
  radius: 2pt,
  stroke: 0.3pt + rgb("#d1d5db"),
  fill: color-gray-bg,
  [
    #set text(size: 6.5pt, fill: color-gray)
    #set par(leading: 0.45em)
    *Upute:* Kvaliteta sna: 1 = jako loše, 5 = odlično #h(4pt) | #h(4pt) Dnevna pospanost: 1 = potpuno budan, 5 = jedva ostajem budan \
    Buđenja: upišite broj buđenja i ukupno minuta budnosti (npr. "2 × / 40 min") #h(6pt) *Donesite ispunjeni dnevnik na sljedeći pregled.*
  ]
)

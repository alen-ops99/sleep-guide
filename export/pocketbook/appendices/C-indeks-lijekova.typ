// ============================================================================
// Dodatak C — Indeks lijekova (abecedni)
// ============================================================================

#import "../template.typ": *

#appendix-title(letter: "C", title: "Indeks lijekova")

#set text(size: 8pt)

#table(
  columns: (1.2fr, 1.5fr, 0.6fr),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  align: (left, left, center),
  inset: (x: 5pt, y: 3.5pt),
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Lijek (INN)],
    text(weight: "bold")[Indikacija],
    text(weight: "bold")[Pogl.],
  ),

  // --- B ---
  [*BZD*#text(size: 6.5pt)[ (benzodiazepini)]],
  [Nesanica (izbjegavati! samo kratkoročno)],
  [1],

  [*Buspiron*],
  [Bruksizam (SSRI-inducirani)],
  [8],

  // --- G ---
  [*Gabapentin*],
  [RLS / PLMS (prva linija)],
  [5],

  // --- D ---
  [*Daridorexant*#text(size: 6.5pt)[ (Quviviq)]],
  [Nesanica (DORA — dostupan u HR od 2025.)],
  [1],

  // --- K ---
  [*Klonazepam*],
  [NREM parasomnije],
  [7],

  [*Klonazepam*],
  [RBD (druga linija)],
  [9],

  // --- M ---
  [*Melatonin*],
  [Nesanica (prod. otpuštanje, >55 g.)],
  [1],

  [*Melatonin*],
  [DSWPD (kronobiološki, 0,5--3 mg)],
  [4],

  [*Melatonin PR*],
  [DSWPD / cirkadijani (2 mg, >55 g.)],
  [4],

  [*Melatonin*],
  [NREM parasomnije],
  [7],

  [*Melatonin*],
  [RBD (prva linija, 3--12 mg)],
  [9],

  // --- Mo ---
  [*Modafinil*],
  [Poremećaj smjenskog rada],
  [4],

  // --- P ---
  [*Prazosin*],
  [Noćne more (PTSP)],
  [6],

  // --- Pr ---
  [*Pregabalin*],
  [RLS / PLMS (alternativa gabapentinu)],
  [5],

  // --- T ---
  [*Trazodon*],
  [Nesanica (off-label)],
  [1],

  [*Trazodon*],
  [NREM parasomnije (off-label)],
  [7],

  // --- Z ---
  [*Zolpidem*],
  [Nesanica (kratkoročno, do 4 tj.)],
  [1],
)

#v(8pt)

#text(size: 7.5pt, fill: color-gray, style: "italic")[Lijekovi su navedeni prema INN nazivu. Za detalje o doziranju, interakcijama i dostupnosti u HR vidjeti odgovarajuće poglavlje.]

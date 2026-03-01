// ============================================================================
// Poglavlje 0: Osnove spavanja — Kratki pregled za liječnika
// ============================================================================

#import "../template.typ": *

#page(header: none)[
  #v(2pt)
  #text(size: 13pt, weight: "bold", fill: color-teal)[Osnove spavanja]
  #v(2pt)
  #line(length: 100%, stroke: 1.2pt + color-teal)
  #v(2pt)

  #set text(size: 8pt)

  #text(fill: color-gray)[Razumijevanje normalnog sna preduvjet je za prepoznavanje poremećaja. Ova stranica pruža pregled ključnih koncepata za kliničku praksu.]

  #v(6pt)

  // --- Faze sna ---
  #text(weight: "bold", fill: color-teal, size: 9pt)[Faze sna: NREM i REM]
  #v(3pt)

  San se dijeli na *NREM* (san bez brzih pokreta očiju) i *REM* (san s brzim pokretima očiju).

  #table(
    columns: (0.5fr, 1fr, 1.5fr),
    inset: (x: 4pt, y: 3pt),
    fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
    stroke: 0.4pt + rgb("#d1d5db"),
    table.header(
      text(weight: "bold")[Faza],
      text(weight: "bold")[Naziv],
      text(weight: "bold")[Značaj],
    ),
    [*N1*], [Prijelazni san], [Lagan; 1–5% sna],
    [*N2*], [Lakši san], [Vretena spavanja; ~50% sna; motoričke vještine],
    [*N3*], [Duboki san], [Fizička obnova; hormon rasta; glimfatičko čišćenje],
    [*REM*], [San sa snovima], [Pamćenje; emocije; mišićna atonija (~25% sna)],
  )

  #v(4pt)
  #pearl[Gubitak mišićne atonije u REM snu → pacijent "izvodi snove" → poremećaj ponašanja u REM snu (RBD). Vidi poglavlje 9.]

  #v(6pt)

  // --- Arhitektura sna ---
  #text(weight: "bold", fill: color-teal, size: 9pt)[Normalna arhitektura sna]
  #v(3pt)

  *4–6 ciklusa* po noći, svaki ~90 min. Prva trećina noći: pretežno N3 (duboki san). Posljednja trećina: pretežno REM. Kratka buđenja (3–15 s) između ciklusa su *normalna*.

  #pearl[Pacijent koji se „budi svaki sat i pol" možda opisuje normalna međuciklusna buđenja — postaju svjesna zbog povišene anksioznosti oko sna.]

  #v(6pt)

  // --- Dva procesa ---
  #text(weight: "bold", fill: color-teal, size: 9pt)[Dva procesa regulacije sna]
  #v(3pt)

  #block(breakable: false)[
    #table(
      columns: (0.8fr, 1.5fr),
      inset: (x: 5pt, y: 4pt),
      fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
      stroke: 0.4pt + rgb("#d1d5db"),
      table.header(
        text(weight: "bold")[Proces],
        text(weight: "bold")[Opis],
      ),
      [*Proces S*\ (homeostaza sna)], [Akumulacija adenozina tijekom budnosti → pritisak za spavanje raste. Restrikcija sna (CBT-I — kognitivno-bihevioralna terapija za nesanicu) funkcionira povećavanjem Procesa S. Kofein blokira adenozinske receptore.],
      [*Proces C*\ (cirkadijani ritam)], [~24-satni endogeni ritam (SCN u hipotalamusu). Ključni signal: *svjetlo*. Pomaknut ritam → cirkadijani poremećaj → melatonin u pravo vrijeme, ne hipnotik!],
    )
  ]

  #pearl[*„Zabranjeno područje za san":* 1–2 h prije uobičajenog usnivanja postoji period pojačane budnosti. Pacijent koji ide u krevet *prerano* ne može zaspati — to nije nesanica.]

  #v(6pt)

  // --- Koliko sna treba ---
  #text(weight: "bold", fill: color-teal, size: 9pt)[Koliko sna trebaju odrasli?]
  #v(3pt)

  *7–9 sati* za većinu odraslih (individualna varijacija). Ključni kriterij: *dnevno funkcioniranje*, ne broj sati. Neki ljudi funkcioniraju optimalno sa 6–7 h (pravi kratki spavači).

  *Sa starenjem:* manje N3, raniji cirkadijani ritam, veća osjetljivost na buku. Ove promjene su *normalne* — farmakoterapija samo ako postoji značajna dnevna disfunkcija.

  #v(4pt)
  #block(
    width: 100%,
    inset: (x: 8pt, y: 5pt),
    radius: 2pt,
    fill: color-teal.lighten(92%),
    stroke: (left: 2pt + color-teal),
    text(size: 7.5pt)[*Zapamtite:* Normalan san ≠ neprekidan san. Kratka buđenja su fiziološka. Problem nastaje tek kada buđenja traju dugo, uzrokuju distres ili narušavaju dnevno funkcioniranje.]
  )
]

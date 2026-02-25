// ============================================================================
// Back Page — Closing page (mirrors title page design, teal band at bottom)
// ============================================================================

#import "../template.typ": *

#page(
  header: none,
  footer: none,
  margin: (top: 20mm, bottom: 0mm, left: 0mm, right: 0mm),
)[
  // --- Top section: centered content on white ---
  #v(1fr)

  #align(center)[
    #text(size: 14pt, weight: "bold", fill: color-teal)[POREMEĆAJI SPAVANJA]
    #v(2mm)
    #text(size: 9pt, fill: color-teal)[Džepni priručnik za liječnike obiteljske medicine]

    #v(4mm)
    #text(size: 8pt, fill: color-gray, style: "italic")[Jer 9 od 10 poremećaja spavanja ostaje neprepoznato u ordinaciji]

    #v(8mm)
    #line(length: 30%, stroke: 0.5pt + color-teal.lighten(50%))
    #v(8mm)

    #text(size: 8.5pt, fill: color-gray, tracking: 0.3pt)[
      10 poremećaja spavanja · Prepoznaj · Učini · Uputi\
      Farmakoterapija prilagođena hrvatskom tržištu (HALMED 2026)\
      Klinički savjeti utemeljeni na dokazima
    ]

    #v(10mm)

    #block(
      width: 78%,
      inset: (x: 12pt, y: 10pt),
      radius: 4pt,
      stroke: 0.5pt + color-gray.lighten(50%),
      fill: color-gray-bg,
      [
        #set text(size: 8pt, fill: color-gray)
        #align(left)[
          *Ovaj priručnik nije sponzoriran od farmaceutske industrije.*\
          Besplatan za preuzimanje i dijeljenje u edukativne svrhe.
        ]
      ]
    )

    #v(10mm)

    #text(size: 9pt, weight: "bold", fill: color-teal)[Alen Juginović, dr. med.]
    #v(1.5mm)
    #text(size: 8.5pt, fill: color-gray, tracking: 0.8pt)[#smallcaps[Harvard Medical School]]
    #v(1mm)
    #text(size: 8.5pt, fill: color-gray)[Neuroznanstvenik spavanja · Liječnik]
  ]

  #v(1fr)

  // --- Bottom teal band (mirroring title page top band) ---
  #block(
    width: 100%,
    inset: (x: 22mm, top: 7mm, bottom: 7mm),
    fill: color-teal,
    spacing: 0pt,
  )[
    #align(center)[
      #text(size: 7.5pt, fill: white.darken(15%), tracking: 2pt, weight: "medium")[2026. · PRVO IZDANJE]
    ]
    // Enhanced decorative wave-like lines (matching title page motif)
    #place(bottom + center, dy: -2mm)[
      #stack(dir: ttb, spacing: 2pt,
        line(length: 25%, stroke: 0.3pt + white.transparentize(70%)),
        line(length: 50%, stroke: 0.4pt + white.transparentize(75%)),
        line(length: 35%, stroke: 0.3pt + white.transparentize(80%)),
        line(length: 60%, stroke: 0.5pt + white.transparentize(75%)),
        line(length: 20%, stroke: 0.3pt + white.transparentize(85%)),
        line(length: 45%, stroke: 0.4pt + white.transparentize(78%)),
        line(length: 55%, stroke: 0.3pt + white.transparentize(82%)),
        line(length: 30%, stroke: 0.5pt + white.transparentize(72%)),
      )
    ]
  ]
]

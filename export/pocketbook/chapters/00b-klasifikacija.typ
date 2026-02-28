// ============================================================================
// Klasifikacija poremećaja spavanja — Sleep Disorder Categories
// ============================================================================

#import "../template.typ": *

#page(header: none)[
  #v(2pt)
  #text(size: 13pt, weight: "bold", fill: color-teal)[Klasifikacija poremećaja spavanja]
  #v(2pt)
  #line(length: 100%, stroke: 1.2pt + color-teal)
  #v(2pt)

  #set text(size: 8pt)

  #text(fill: color-gray)[Prema ICSD-3, poremećaji spavanja dijele se u šest skupina. Boja svake kategorije koristi se dosljedno kroz cijeli priručnik.]

  #text(size: 7pt, fill: color-gray)[_Uz boje, svaka kategorija nosi slovnu oznaku (N, D, H, C, P, M) za raspoznavanje u crno-bijelom ispisu._]

  #v(5pt)

  // Helper for category blocks
  #let cat-block(color: color-teal, name: "", chapters: "", desc: "") = {
    block(breakable: false, below: 5pt)[
      #block(
        width: 100%,
        inset: (x: 9pt, y: 6pt),
        radius: 3pt,
        stroke: (left: 3.5pt + color),
        fill: color.lighten(93%),
        [
          #grid(
            columns: (1fr, auto),
            align: (left, right),
            text(weight: "bold", fill: color, size: 9pt)[#name],
            text(size: 7pt, fill: color-gray)[#chapters],
          )
          #v(2pt)
          #text(size: 7.5pt)[#desc]
        ]
      )
    ]
  }

  // --- 1. Nesanica ---
  #cat-block(
    color: cat-insomnia,
    name: "[N] NESANICA",
    chapters: "Poglavlje 1",
    desc: "Teškoće s usnivanjem ili održavanjem sna uz dnevne posljedice.",
  )

  // --- 2. Poremećaji disanja u snu ---
  #cat-block(
    color: cat-breathing,
    name: "[D] POREMEĆAJI DISANJA U SNU",
    chapters: "Poglavlje 3",
    desc: "Opstruktivna i centralna apneja — ponavljani prekidi disanja koji fragmentiraju san.",
  )

  // --- 3. Hipersomnolencija ---
  #cat-block(
    color: cat-hypersomnia,
    name: "[H] HIPERSOMNOLENCIJA",
    chapters: "Poglavlja 2, 10",
    desc: "Pretjerana dnevna pospanost: najčešće nedovoljan san, rijetko narkolepsija ili idiopatska hipersomnija.",
  )

  // --- 4. Cirkadijani poremećaji ---
  #cat-block(
    color: cat-circadian,
    name: "[C] CIRKADIJANI POREMEĆAJI",
    chapters: "Poglavlje 4",
    desc: "Neusklađenost biološkog sata s društvenim rasporedom — problem vremena, ne kvalitete sna.",
  )

  // --- 5. Parasomnije ---
  #cat-block(
    color: cat-parasomnia,
    name: "[P] PARASOMNIJE",
    chapters: "Poglavlja 6, 7, 9",
    desc: "Neželjeni doživljaji ili ponašanja u snu: noćne more, mjesečarenje, izvođenje snova (RBD).",
  )

  // --- 6. Poremećaji pokreta ---
  #cat-block(
    color: cat-movement,
    name: "[M] POREMEĆAJI POKRETA",
    chapters: "Poglavlja 5, 8",
    desc: "Ponavljani pokreti koji ometaju san: sindrom nemirnih nogu (RLS) i bruksizam.",
  )

  #v(4pt)

  // --- Bottom note ---
  #block(breakable: false)[
    #block(
      width: 100%,
      inset: (x: 9pt, y: 6pt),
      radius: 3pt,
      stroke: (left: 3pt + color-orange),
      fill: color-orange.lighten(93%),
      [
        #text(weight: "bold", fill: color-orange, size: 7.5pt)[NAPOMENA]
        #h(6pt)
        #text(size: 7.5pt)[Mnogi pacijenti imaju više od jednog poremećaja istovremeno — uvijek razmislite o preklapajućim dijagnozama.]
      ]
    )
  ]

  #v(6pt)

  // --- Prevalence visualization ---
  #text(weight: "bold", fill: color-teal, size: 8.5pt)[Koliko su česti? Procijenjeni broj pacijenata na 2.000 u praksi]
  #v(3pt)

  #let prev-bar(name, low, high, color) = {
    let max-val = 700
    let bar-width = calc.min(high / max-val * 100, 100)
    block(below: 2pt)[
      #grid(
        columns: (35%, 50%, 15%),
        column-gutter: 3pt,
        align: (right + horizon, left + horizon, left + horizon),
        text(size: 6.5pt, fill: color-gray)[#name],
        box(width: 100%, height: 7pt, radius: 1pt, fill: rgb("#e5e7eb"), clip: true,
          box(width: bar-width * 1%, height: 100%, radius: 1pt, fill: color)
        ),
        text(size: 6pt, fill: color-gray)[#low–#high],
      )
    ]
  }

  #prev-bar("Nedovoljan san", 300, 700, cat-hypersomnia)
  #prev-bar("Nesanica", 200, 300, cat-insomnia)
  #prev-bar("OSA (neliječena)", 150, 400, cat-breathing)
  #prev-bar("Bruksizam", 160, 260, cat-movement)
  #prev-bar("RLS", 100, 200, cat-movement)
  #prev-bar("Noćne more", 40, 160, cat-parasomnia)
  #prev-bar("NREM parasomnije", 20, 80, cat-parasomnia)
  #prev-bar("Cirkadijani", 20, 60, cat-circadian)
  #prev-bar("RBD", 15, 40, cat-parasomnia)
  #prev-bar("Narkolepsija/IH", 1, 2, cat-hypersomnia)

  #v(3pt)
  #text(size: 6pt, fill: color-gray, style: "italic")[Procjene temeljene na epidemiološkim podacima: Young 1993 (OSA), Allen 2005 (RLS), Ohayon 2002 (nesanica), Watson 2015 (nedovoljan san). Vrijednosti su okvirne i ovise o demografiji prakse.]
]

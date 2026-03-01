// ============================================================================
// Klasifikacija i klinički vodič — Merged classification + symptom pathways
// ============================================================================

#import "../template.typ": *

#page(header: none)[
  #v(1pt)
  #text(size: 12pt, weight: "bold", fill: color-teal)[Klasifikacija i klinički vodič]
  #v(1pt)
  #line(length: 100%, stroke: 1.2pt + color-teal)
  #v(2pt)

  // Helper for ultra-compact category blocks (left column)
  #let cat-block(color: color-teal, name: "", chapters: "", desc: "") = {
    block(breakable: false, below: 2.5pt)[
      #block(
        width: 100%,
        inset: (x: 6pt, y: 3pt),
        radius: 2pt,
        stroke: (left: 3pt + color),
        fill: color.lighten(93%),
        [
          #grid(
            columns: (1fr, auto),
            align: (left, right),
            text(weight: "bold", fill: color, size: 7.5pt)[#name],
            text(size: 6pt, fill: color-gray)[#chapters],
          )
          #v(1pt)
          #text(size: 6.5pt)[#desc]
        ]
      )
    ]
  }

  // Helper: destination pill for pathway blocks (right column)
  #let dest(label, color) = {
    box(
      inset: (x: 3pt, y: 1pt),
      radius: 2pt,
      fill: color.lighten(85%),
      text(fill: color, weight: "bold", size: 5.5pt)[#sym.arrow.r #label]
    )
  }

  // Helper: pathway question row
  #let q-row(num, question, label, color) = {
    block(below: 1.5pt)[
      #grid(
        columns: (8pt, 1fr, auto),
        column-gutter: 2pt,
        align: (right + horizon, left + horizon, right + horizon),
        text(size: 6pt, weight: "bold", fill: color-gray)[#num.],
        text(size: 6pt)[#question],
        dest(label, color),
      )
    ]
  }

  // Helper: pathway question with plain-text destination
  #let q-row-plain(num, question, destination) = {
    block(below: 1.5pt)[
      #grid(
        columns: (8pt, 1fr, auto),
        column-gutter: 2pt,
        align: (right + horizon, left + horizon, right + horizon),
        text(size: 6pt, weight: "bold", fill: color-gray)[#num.],
        text(size: 6pt)[#question],
        box(
          inset: (x: 3pt, y: 1pt),
          radius: 2pt,
          fill: color-gray-bg,
          text(fill: color-gray, weight: "bold", size: 5.5pt)[#sym.arrow.r #destination]
        ),
      )
    ]
  }

  // =========================================================================
  // 2-COLUMN GRID: Left = Classification | Right = Symptom Pathways
  // =========================================================================
  #grid(
    columns: (1fr, 4pt, 1fr),

    // --- LEFT COLUMN: 6 classification categories ---
    [
      #text(size: 7pt, fill: color-gray)[_ICSD-3 klasifikacija (6 skupina):_]
      #v(2pt)

      #cat-block(
        color: cat-insomnia,
        name: "[N] NESANICA",
        chapters: "Pogl. 1",
        desc: "Teškoće s usnivanjem ili održavanjem sna uz dnevne posljedice.",
      )
      #cat-block(
        color: cat-breathing,
        name: "[D] POREMEĆAJI DISANJA U SNU",
        chapters: "Pogl. 3",
        desc: "Opstruktivna i centralna apneja — ponavljani prekidi disanja.",
      )
      #cat-block(
        color: cat-hypersomnia,
        name: "[H] HIPERSOMNOLENCIJA",
        chapters: "Pogl. 2, 10",
        desc: "Pretjerana dnevna pospanost: najčešće nedovoljan san, rijetko narkolepsija.",
      )
      #cat-block(
        color: cat-circadian,
        name: "[C] CIRKADIJANI POREMEĆAJI",
        chapters: "Pogl. 4",
        desc: "Neusklađenost biološkog sata s rasporedom — problem vremena, ne kvalitete.",
      )
      #cat-block(
        color: cat-parasomnia,
        name: "[P] PARASOMNIJE",
        chapters: "Pogl. 6, 7, 9",
        desc: "Neželjeni doživljaji u snu: noćne more, mjesečarenje, RBD.",
      )
      #cat-block(
        color: cat-movement,
        name: "[M] POREMEĆAJI POKRETA",
        chapters: "Pogl. 5, 8",
        desc: "Ponavljani pokreti koji ometaju san: nemirne noge (RLS) i bruksizam.",
      )

      #v(1pt)
      #block(
        width: 100%,
        inset: (x: 6pt, y: 3pt),
        radius: 2pt,
        stroke: (left: 2.5pt + color-orange),
        fill: color-orange.lighten(93%),
        [
          #text(weight: "bold", fill: color-orange, size: 6.5pt)[NAPOMENA]
          #h(4pt)
          #text(size: 6.5pt)[Mnogi pacijenti imaju više poremećaja istovremeno.]
        ]
      )
    ],

    // spacer
    [],

    // --- RIGHT COLUMN: 3 symptom pathway blocks ---
    [
      #text(size: 7pt, fill: color-gray)[_Od tegobe do dijagnoze:_]
      #v(2pt)

      // Block A — POSPANI SU / UMORNI
      #block(
        width: 100%,
        inset: (x: 5pt, y: 3pt),
        radius: 2pt,
        stroke: (left: 3pt + cat-hypersomnia),
        fill: cat-hypersomnia.lighten(94%),
        below: 3pt,
        [
          #text(size: 7pt, weight: "bold", fill: cat-hypersomnia)[A — POSPANI SU / UMORNI]
          #v(1.5pt)
          #q-row(1, [Spava li < 7 h radnim danom?], [Pogl. 2], cat-hypersomnia)
          #q-row(2, [Hrče li? Debeo vrat? Visok tlak?], [Pogl. 3], cat-breathing)
          #q-row(3, [Vikendom OK, radnim ne može?], [Pogl. 4], cat-circadian)
          #q-row(4, [Klecaju koljena kad se smije?], [Pogl. 10], cat-hypersomnia)
          #q-row-plain(5, [Ništa od navedenog], [Centar za spavanje])
        ]
      )

      // Block B — NE MOGU SPAVATI
      #block(
        width: 100%,
        inset: (x: 5pt, y: 3pt),
        radius: 2pt,
        stroke: (left: 3pt + cat-insomnia),
        fill: cat-insomnia.lighten(94%),
        below: 3pt,
        [
          #text(size: 7pt, weight: "bold", fill: cat-insomnia)[B — NE MOGU SPAVATI]
          #v(1.5pt)
          #q-row(1, [Vikendom spava normalno?], [Pogl. 4], cat-circadian)
          #q-row(2, [Hrče li? Debeo vrat?], [Pogl. 3], cat-breathing)
          #q-row(3, [Nemir u nogama navečer?], [Pogl. 5], cat-movement)
          #q-row(4, [Tegobe > 3 mjeseca?], [Pogl. 1 (kronična)], cat-insomnia)
          #q-row(5, [Tegobe < 3 mjeseca?], [Pogl. 1 (kratkotr.)], cat-insomnia)
        ]
      )

      // Block C — NEOBIČNO PONAŠANJE U SNU (mini-table)
      #block(
        width: 100%,
        inset: (x: 0pt, y: 0pt),
        radius: 2pt,
        clip: true,
        stroke: (left: 3pt + cat-parasomnia),
        fill: cat-parasomnia.lighten(94%),
        below: 3pt,
        [
          #block(inset: (x: 5pt, top: 3pt, bottom: 1.5pt))[
            #text(size: 7pt, weight: "bold", fill: cat-parasomnia)[C — NEOBIČNO PONAŠANJE U SNU]
          ]
          #set text(size: 6pt)
          #table(
            columns: (0.7fr, 1.2fr, auto),
            fill: (_, row) => if row == 0 { cat-parasomnia.lighten(85%) } else if calc.rem(row, 2) == 0 { cat-parasomnia.lighten(96%) } else { white },
            align: left,
            inset: 3pt,
            stroke: 0.3pt + rgb("#d1d5db"),
            table.header(
              text(weight: "bold", fill: cat-parasomnia, size: 5.5pt)[Kada?],
              text(weight: "bold", fill: cat-parasomnia, size: 5.5pt)[Što?],
              text(weight: "bold", fill: cat-parasomnia, size: 5.5pt)[Dijagnoza],
            ),
            [Prva trećina noći], [Hoda, ne sjeća se], dest([Pogl. 7], cat-parasomnia),
            [2. pol., >50 g.], [Izvodi snove, udara], dest([Pogl. 9], cat-parasomnia),
            [Budi se u strahu], [Ponavljajući snovi], dest([Pogl. 6], cat-parasomnia),
            [Škrgutanje zubima], [Istrošena caklina], dest([Pogl. 8], cat-movement),
          )
        ]
      )
    ],
  )

  #v(2pt)

  // =========================================================================
  // PREVALENCE BARS
  // =========================================================================
  #text(weight: "bold", fill: color-teal, size: 7.5pt)[Koliko su česti? Procjena prevalencije (% u praksi od 2.000 pacijenata)]
  #v(2pt)

  #let prev-bar(name, low, high, color, low-pct, high-pct) = {
    let max-val = 700
    let bar-width = calc.min(high / max-val * 100, 100)
    block(below: 1.5pt)[
      #grid(
        columns: (33%, 52%, 15%),
        column-gutter: 2pt,
        align: (right + horizon, left + horizon, left + horizon),
        text(size: 6pt, fill: color-gray)[#name],
        box(width: 100%, height: 6pt, radius: 1pt, fill: rgb("#e5e7eb"), clip: true,
          box(width: bar-width * 1%, height: 100%, radius: 1pt, fill: color)
        ),
        text(size: 5.5pt, fill: color-gray)[#low-pct–#high-pct],
      )
    ]
  }

  #prev-bar("Nedovoljan san", 300, 700, cat-hypersomnia, "15%", "35%")
  #prev-bar("Nesanica", 200, 300, cat-insomnia, "10%", "15%")
  #prev-bar("OSA (neliječena)", 150, 400, cat-breathing, "7,5%", "20%")
  #prev-bar("Bruksizam", 160, 260, cat-movement, "8%", "13%")
  #prev-bar("RLS", 100, 200, cat-movement, "5%", "10%")
  #prev-bar("Noćne more", 40, 160, cat-parasomnia, "2%", "8%")
  #prev-bar("NREM parasomnije", 20, 80, cat-parasomnia, "1%", "4%")
  #prev-bar("Cirkadijani", 20, 60, cat-circadian, "1%", "3%")
  #prev-bar("RBD", 15, 40, cat-parasomnia, "0,75%", "2%")
  #prev-bar("Narkolepsija/IH", 1, 2, cat-hypersomnia, "<0,1%", "<0,1%")

  #v(2pt)

  // =========================================================================
  // KLINIČKI SAVJETI (moved from 00c Page 1)
  // =========================================================================
  #block(
    width: 100%,
    inset: (x: 6pt, y: 4pt),
    radius: 2pt,
    stroke: (left: 2pt + color-orange),
    fill: rgb("#fffbeb"),
    [
      #text(weight: "bold", fill: color-orange, size: 7pt)[KLINIČKI SAVJETI]
      #v(1pt)
      #set text(size: 6.5pt)
      - Više poremećaja istodobno — COMISA (komorbidna nesanica + apneja) u 30–50%
      - Nikada sedative bez isključenja apneje u snu — pitajte o hrkanju
      - Novo izvođenje snova >50 g. nije benigno — uvijek neurolog
      - Feritin 30 je „normalan" za lab, ali nedovoljan za mozak — cilj ≥100
    ]
  )

  #v(1pt)
  #text(size: 5.5pt, fill: color-gray, style: "italic")[Procjene prevalencije: Young 1993 (OSA), Allen 2005 (RLS), Ohayon 2002 (nesanica), Watson 2015 (nedovoljan san). Boje kategorija koriste se dosljedno kroz priručnik.]
]

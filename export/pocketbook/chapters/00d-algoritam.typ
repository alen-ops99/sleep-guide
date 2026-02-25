// ============================================================================
// Dijagnostički algoritam — Decision Algorithm (1 page)
// ============================================================================

#import "../template.typ": *

#page(header: none)[
  #v(2pt)
  #text(size: 13pt, weight: "bold", fill: color-teal)[Dijagnostički algoritam]
  #v(2pt)
  #line(length: 100%, stroke: 1.2pt + color-teal)
  #v(1pt)
  #text(size: 7pt, fill: color-gray)[Vodič za liječnika obiteljske medicine: od glavne tegobe do poglavlja.]
  #v(4pt)

  // -------------------------------------------------------------------------
  // Helper: destination pill — colored inline tag pointing to a chapter
  // -------------------------------------------------------------------------
  #let dest(label, color) = {
    box(
      inset: (x: 4pt, y: 2pt),
      radius: 2pt,
      fill: color.lighten(85%),
      text(fill: color, weight: "bold", size: 6.5pt)[#sym.arrow.r #label]
    )
  }

  // -------------------------------------------------------------------------
  // Helper: decision step — question text + DA arrow + destination pill
  // -------------------------------------------------------------------------
  #let step(num, question, label, color) = {
    block(below: 3pt)[
      #grid(
        columns: (10pt, 1fr, auto),
        column-gutter: 3pt,
        align: (right + horizon, left + horizon, right + horizon),
        text(size: 7pt, weight: "bold", fill: color-gray)[#num.],
        text(size: 7pt)[#question],
        dest(label, color),
      )
    ]
  }

  // Helper: final step (no colored pill — plain text destination)
  #let step-final(num, question, destination) = {
    block(below: 3pt)[
      #grid(
        columns: (10pt, 1fr, auto),
        column-gutter: 3pt,
        align: (right + horizon, left + horizon, right + horizon),
        text(size: 7pt, weight: "bold", fill: color-gray)[#num.],
        text(size: 7pt)[#question],
        box(
          inset: (x: 4pt, y: 2pt),
          radius: 2pt,
          fill: color-gray-bg,
          text(fill: color-gray, weight: "bold", size: 6.5pt)[#sym.arrow.r #destination]
        ),
      )
    ]
  }

  // -------------------------------------------------------------------------
  // Helper: pathway header — colored banner with white title
  // -------------------------------------------------------------------------
  #let pathway-header(title, color) = {
    block(
      width: 100%,
      inset: (x: 6pt, y: 4pt),
      radius: (top: 3pt),
      fill: color,
      text(fill: white, weight: "bold", size: 7.5pt)[#title]
    )
  }

  // =========================================================================
  // TWO MAIN PATHWAYS — side by side
  // =========================================================================
  #grid(
    columns: (1fr, 6pt, 1fr),
    // ---------------------------------------------------------------------
    // PATHWAY A — Pretjerana dnevna pospanost
    // ---------------------------------------------------------------------
    [
      #pathway-header("A — PRETJERANA DNEVNA POSPANOST", cat-hypersomnia)
      #v(3pt)
      #text(size: 6.5pt, fill: color-gray, style: "italic")[Pitajte DA/NE, idućite redom. Prvo DA zaustavljate.]
      #v(3pt)

      #step(1, [Spava li < 7 h radnim danom?], [Pogl. 1 Nedovoljan san], cat-hypersomnia)
      #step(2, [STOP-BANG $>=$ 3? Hrkanje? BMI > 30?], [Pogl. 3 OSA], cat-breathing)
      #step(3, [Vikendom spava normalno, radnim ne?], [Pogl. 4 Cirkadijani], cat-circadian)
      #step(4, [Katapleksija? „Klecanje" pri smijehu?], [Pogl. 10 Hipersomnolencija], cat-hypersomnia)
      #step-final(5, [Ništa od navedenog], [Centar za spavanje (MSLT + PSG)])
    ],
    // spacer column
    [],
    // ---------------------------------------------------------------------
    // PATHWAY B — Ne može spavati / nesanica
    // ---------------------------------------------------------------------
    [
      #pathway-header([B — NE MOŽE SPAVATI / NESANICA], cat-insomnia)
      #v(3pt)
      #text(size: 6.5pt, fill: color-gray, style: "italic")[Pitajte DA/NE, idućite redom. Prvo DA zaustavljate.]
      #v(3pt)

      #step(1, [Vikendom spava dobro?], [Pogl. 4 Cirkadijani], cat-circadian)
      #step(2, [Hrče li? STOP-BANG $>=$ 3?], [Pogl. 3 OSA + COMISA], cat-breathing)
      #step(3, [Nemir u nogama navečer?], [Pogl. 5 RLS], cat-movement)
      #step(4, [ISI $>=$ 15?], [Pogl. 2 Nesanica — CBT-I], cat-insomnia)
      #step-final(5, [Lijekovi kao uzrok?], [Revizija farmakoterapije])
    ],
  )

  #v(5pt)

  // =========================================================================
  // PATHWAY C — Neobično ponašanje u snu (full width)
  // =========================================================================
  #pathway-header([C — NEOBIČNO PONAŠANJE U SNU], cat-parasomnia)
  #v(3pt)

  // Helper: parasomnia row — description + destination
  #let para-row(desc, label) = {
    block(below: 2.5pt)[
      #grid(
        columns: (1fr, auto),
        column-gutter: 4pt,
        align: (left + horizon, right + horizon),
        text(size: 7pt)[#desc],
        dest(label, cat-parasomnia),
      )
    ]
  }

  #para-row(
    [Prva trećina noći, oči otvorene, amnezija],
    [Pogl. 7 NREM parasomnije],
  )
  #para-row(
    [Druga polovica noći, izvođenje snova, > 50 god.],
    [Pogl. 9 RBD — neurolog!],
  )
  #para-row(
    [Uznemirujući snovi, puno sjećanje],
    [Pogl. 6 Noćne more],
  )

  #v(4pt)

  // =========================================================================
  // BOTTOM NOTE
  // =========================================================================
  #block(
    width: 100%,
    inset: (x: 8pt, y: 5pt),
    radius: 2pt,
    stroke: (left: 3pt + color-orange),
    fill: color-orange.lighten(93%),
    [
      #text(weight: "bold", fill: color-orange, size: 7pt)[NAPOMENA]
      #h(4pt)
      #text(size: 7pt)[Više od jednog poremećaja može postojati istodobno. Uvijek razmotriti OSA-u kod nesanice (COMISA) i isključiti nedovoljan san prije dijagnoze hipersomnolencije.]
    ]
  )
]

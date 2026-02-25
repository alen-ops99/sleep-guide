// ============================================================================
// Klinički vodič — Merged 2-page clinical guide (replaces 00a + 00d)
// Page 1: Od tegobe do dijagnoze (symptom → diagnosis pathways)
// Page 2: Što učiniti? (10 action cards + golden rules)
// ============================================================================

#import "../template.typ": *

// ═══════════════════════════════════════════════════════════════════════════════
// PAGE 1 — Od tegobe do dijagnoze
// ═══════════════════════════════════════════════════════════════════════════════
#page(header: none)[

  // -------------------------------------------------------------------------
  // Helper: destination pill — colored inline tag pointing to a chapter
  // -------------------------------------------------------------------------
  #let dest(label, color) = {
    box(
      inset: (x: 4pt, y: 1.5pt),
      radius: 2pt,
      fill: color.lighten(85%),
      text(fill: color, weight: "bold", size: 6.5pt)[#sym.arrow.r #label]
    )
  }

  // -------------------------------------------------------------------------
  // Helper: pathway question row — number + question + destination pill
  // -------------------------------------------------------------------------
  #let q-row(num, question, label, color) = {
    block(below: 2pt)[
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

  // -------------------------------------------------------------------------
  // Helper: pathway question with plain-text destination (no colored pill)
  // -------------------------------------------------------------------------
  #let q-row-plain(num, question, destination) = {
    block(below: 2pt)[
      #grid(
        columns: (10pt, 1fr, auto),
        column-gutter: 3pt,
        align: (right + horizon, left + horizon, right + horizon),
        text(size: 7pt, weight: "bold", fill: color-gray)[#num.],
        text(size: 7pt)[#question],
        box(
          inset: (x: 4pt, y: 1.5pt),
          radius: 2pt,
          fill: color-gray-bg,
          text(fill: color-gray, weight: "bold", size: 6.5pt)[#sym.arrow.r #destination]
        ),
      )
    ]
  }

  // =========================================================================
  // TITLE
  // =========================================================================
  #text(size: 13pt, weight: "bold", fill: color-teal)[Od tegobe do dijagnoze]
  #v(2pt)
  #line(length: 100%, stroke: 1.2pt + color-teal)
  #v(1pt)
  #text(size: 7pt, fill: color-gray, style: "italic")[Tri glavne tegobe — pitanja na jednostavnom jeziku — bez kratica]
  #v(5pt)

  // =========================================================================
  // BLOCK A — POSPANI SU / UMORNI
  // =========================================================================
  #block(
    width: 100%,
    inset: (x: 8pt, y: 6pt),
    radius: 3pt,
    stroke: (left: 3pt + cat-hypersomnia),
    fill: cat-hypersomnia.lighten(94%),
    below: 5pt,
    [
      #text(size: 8pt, weight: "bold", fill: cat-hypersomnia)[A — POSPANI SU / UMORNI]
      #v(3pt)
      #q-row(1, [Spava li manje od 7 sati radnim danom?], [Pogl. 1], cat-hypersomnia)
      #q-row(2, [Hrče li? Debeo vrat? Visok tlak?], [Pogl. 3], cat-breathing)
      #q-row(3, [Vikendom spava normalno, radnim danom ne može?], [Pogl. 4], cat-circadian)
      #q-row(4, [Klecaju li mu koljena kad se smije?], [Pogl. 10], cat-hypersomnia)
      #q-row-plain(5, [Ništa od navedenog], [Centar za spavanje])
    ]
  )

  // =========================================================================
  // BLOCK B — NE MOGU SPAVATI
  // =========================================================================
  #block(
    width: 100%,
    inset: (x: 8pt, y: 6pt),
    radius: 3pt,
    stroke: (left: 3pt + cat-insomnia),
    fill: cat-insomnia.lighten(94%),
    below: 5pt,
    [
      #text(size: 8pt, weight: "bold", fill: cat-insomnia)[B — NE MOGU SPAVATI]
      #v(3pt)
      #q-row(1, [Vikendom spava normalno?], [Pogl. 4 (cirkadijani)], cat-circadian)
      #q-row(2, [Hrče li? Debeo vrat?], [Pogl. 3 (apneja u snu)], cat-breathing)
      #q-row(3, [Nemir u nogama navečer?], [Pogl. 5 (nemirne noge)], cat-movement)
      #q-row(4, [Tegobe traju dulje od 3 mjeseca?], [Pogl. 2 (kronična nesanica)], cat-insomnia)
      #q-row(5, [Tegobe traju kraće od 3 mjeseca?], [Pogl. 2 (kratkotrajna nesanica)], cat-insomnia)
    ]
  )

  // =========================================================================
  // BLOCK C — NEOBIČNO PONAŠANJE U SNU (mini-table)
  // =========================================================================
  #block(
    width: 100%,
    inset: (x: 0pt, y: 0pt),
    radius: 3pt,
    clip: true,
    stroke: (left: 3pt + cat-parasomnia),
    fill: cat-parasomnia.lighten(94%),
    below: 5pt,
    [
      #block(inset: (x: 8pt, top: 6pt, bottom: 3pt))[
        #text(size: 8pt, weight: "bold", fill: cat-parasomnia)[C — NEOBIČNO PONAŠANJE U SNU]
      ]
      #set text(size: 7pt)
      #table(
        columns: (0.7fr, 1.2fr, auto),
        fill: (_, row) => if row == 0 { cat-parasomnia.lighten(85%) } else if calc.rem(row, 2) == 0 { cat-parasomnia.lighten(96%) } else { white },
        align: left,
        inset: 4pt,
        stroke: 0.3pt + rgb("#d1d5db"),
        table.header(
          text(weight: "bold", fill: cat-parasomnia, size: 6.5pt)[Kada?],
          text(weight: "bold", fill: cat-parasomnia, size: 6.5pt)[Što?],
          text(weight: "bold", fill: cat-parasomnia, size: 6.5pt)[Dijagnoza],
        ),
        [Prva trećina noći], [Hoda, oči otvorene, ne sjeća se], dest([Pogl. 7 (parasomnije)], cat-parasomnia),
        [Druga polovica, >50 g.], [Izvodi snove, udara, pada iz kreveta], dest([Pogl. 9 (neurolog!)], cat-parasomnia),
        [Budi se u strahu, sjeća se sna], [Uznemirujući, ponavljajući snovi], dest([Pogl. 6 (noćne more)], cat-parasomnia),
        [Škrgutanje zubima], [Istrošena caklina, bol u čeljusti], dest([Pogl. 8 (bruksizam)], cat-movement),
      )
    ]
  )

  // =========================================================================
  // BOTTOM WARNING STRIP
  // =========================================================================
  #block(
    width: 100%,
    inset: (x: 8pt, y: 5pt),
    radius: 2pt,
    stroke: (left: 3pt + color-orange),
    fill: color-orange.lighten(93%),
    [
      #text(weight: "bold", fill: color-orange, size: 7pt)[UPOZORENJE]
      #h(4pt)
      #text(size: 7pt)[Više poremećaja može postojati istodobno. Nikada sedative bez isključenja apneje u snu.]
    ]
  )
]


// ═══════════════════════════════════════════════════════════════════════════════
// PAGE 2 — Što učiniti?
// ═══════════════════════════════════════════════════════════════════════════════
#page(header: none)[

  // -------------------------------------------------------------------------
  // Helper: compact action card for a single disorder
  // -------------------------------------------------------------------------
  #let action-card(number: 0, name: "", cat-color: color-teal, ambulanta: "", uputite: "") = {
    block(
      width: 100%,
      inset: (left: 6pt, right: 5pt, top: 4pt, bottom: 4pt),
      radius: 2pt,
      stroke: (left: 2.5pt + cat-color),
      fill: cat-color.lighten(95%),
      below: 3.5pt,
      [
        #text(size: 7.5pt, weight: "bold", fill: cat-color)[#number. #name]
        #v(1pt)
        #set text(size: 7pt)
        *✓ U ambulanti:* #ambulanta \
        *→ Uputite ako:* #uputite
      ]
    )
  }

  // =========================================================================
  // TITLE
  // =========================================================================
  #text(size: 13pt, weight: "bold", fill: color-teal)[Što učiniti?]
  #v(2pt)
  #line(length: 100%, stroke: 1.2pt + color-teal)
  #v(1pt)
  #text(size: 7pt, fill: color-gray, style: "italic")[10 poremećaja — za svaki: što možete u ambulanti i kada uputiti]
  #v(4pt)

  // =========================================================================
  // 2-COLUMN GRID OF 10 ACTION CARDS (5 rows × 2 cols)
  // =========================================================================
  #grid(
    columns: (1fr, 5pt, 1fr),

    // --- Column 1 (cards 1–5) ---
    [
      #action-card(
        number: 1,
        name: "Nedovoljan san",
        cat-color: cat-hypersomnia,
        ambulanta: [Dnevnik spavanja + test produljenja sna 2 tjedna],
        uputite: [Pospanost traje unatoč ≥7 h sna],
      )
      #action-card(
        number: 2,
        name: "Nesanica",
        cat-color: cat-insomnia,
        ambulanta: [Ograničenje sna + kontrola podražaja (CBT-I)],
        uputite: [Bez poboljšanja 4–6 tjedana ili ovisnost o tabletama],
      )
      #action-card(
        number: 3,
        name: "Opstruktivna apneja",
        cat-color: cat-breathing,
        ambulanta: [STOP-BANG probir, podrška za CPAP masku],
        uputite: [STOP-BANG ≥3 ili pospanost za volanom],
      )
      #action-card(
        number: 4,
        name: "Cirkadijani poremećaji",
        cat-color: cat-circadian,
        ambulanta: [Melatonin + jutarnje svjetlo (pomak faze)],
        uputite: [Bez odgovora nakon 4–6 tjedana],
      )
      #action-card(
        number: 5,
        name: "Nemirne noge / RLS",
        cat-color: cat-movement,
        ambulanta: [Feritin (cilj ≥100), gabapentin],
        uputite: [Augmentacija ili dva neuspjela lijeka],
      )
    ],

    // spacer
    [],

    // --- Column 2 (cards 6–10) ---
    [
      #action-card(
        number: 6,
        name: "Noćne more",
        cat-color: cat-parasomnia,
        ambulanta: [IRT tehnika (15 min edukacija), prazosin],
        uputite: [PTSP ili suicidalna ideacija],
      )
      #action-card(
        number: 7,
        name: "NREM parasomnije",
        cat-color: cat-parasomnia,
        ambulanta: [Sigurnost! Ukloniti okidače (OSA, zolpidem)],
        uputite: [Novonastale u odraslih ili ozljede],
      )
      #action-card(
        number: 8,
        name: "Bruksizam",
        cat-color: cat-movement,
        ambulanta: [Stomatolog za udlagu + STOP-BANG probir],
        uputite: [Sumnja na OSA ili refraktorno],
      )
      #action-card(
        number: 9,
        name: "RBD",
        cat-color: cat-parasomnia,
        ambulanta: [Sigurnost sobe, melatonin 3–6 mg],
        uputite: [Svaku sumnju #sym.arrow.r neurolog (uvijek!)],
      )
      #action-card(
        number: 10,
        name: "Hipersomnolencija",
        cat-color: cat-hypersomnia,
        ambulanta: [Isključiti nedovoljan san (2 tj. test)],
        uputite: [Svaku sumnju #sym.arrow.r neurolog / centar],
      )
    ],
  )

  #v(3pt)

  // =========================================================================
  // ZLATNA PRAVILA — Golden Rules (amber card)
  // =========================================================================
  #block(
    width: 100%,
    inset: (x: 9pt, y: 7pt),
    radius: 3pt,
    stroke: (left: 3pt + cat-hypersomnia, bottom: 1pt + cat-hypersomnia),
    fill: rgb("#fffbeb"),
    [
      #text(weight: "bold", fill: cat-hypersomnia, size: 8pt)[ZLATNA PRAVILA]
      #v(3pt)
      #set text(size: 7.5pt)
      + NIKADA sedative bez isključenja apneje u snu
      + Novo izvođenje snova u osobe >50 g. NIKADA nije benigno #sym.arrow.r neurolog
      + Feritin 30 je "normalan" za lab, ali NEDOVOLJAN za nemirne noge #sym.arrow.r cilj ≥100
      + Kod SVAKE nesanice pitajte o hrkanju — u 30–50% postoji i apneja
    ]
  )
]

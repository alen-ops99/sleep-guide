// ============================================================================
// Klinički vodič — Što učiniti? (10 action cards + golden rules)
// ============================================================================

#import "../template.typ": *

// ═══════════════════════════════════════════════════════════════════════════════
// Što učiniti?
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
  #text(size: 7pt, fill: color-gray, style: "italic")[Svaki poremećaj ima korake za ambulantu i jasne kriterije za uputnicu. Dijagnoza počinje jednim dobrim pitanjem.]
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
        name: "Nesanica",
        cat-color: cat-insomnia,
        ambulanta: [Ograničenje sna + kontrola podražaja (CBT-I)],
        uputite: [Bez poboljšanja 4–6 tjedana ili ovisnost o tabletama],
      )
      #action-card(
        number: 2,
        name: "Nedovoljan san",
        cat-color: cat-hypersomnia,
        ambulanta: [Dnevnik spavanja + test produljenja sna 2 tjedna],
        uputite: [Pospanost traje unatoč ≥7 h sna],
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

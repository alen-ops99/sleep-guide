// ============================================================================
// Front Matter — Title page, About this guide, How to use, Abbreviations
// ============================================================================

#import "../template.typ": *

// --- Title Page ---
#page(
  header: none,
  footer: none,
  margin: (top: 0mm, bottom: 20mm, left: 0mm, right: 0mm),
)[
  // --- Teal header band with title + enhanced EEG-trace bezier waves ---
  #block(
    width: 100%,
    inset: (x: 22mm, top: 28mm, bottom: 14mm),
    fill: color-teal,
  )[
    // Enhanced EEG wave motif — 8 layered polylines at varying opacities
    #place(top + left, dy: 4mm, dx: 8mm)[
      #curve(
        stroke: 0.6pt + white.transparentize(70%),
        curve.move((0mm, 6mm)), curve.line((8mm, 2mm)), curve.line((16mm, 8mm)), curve.line((24mm, 3mm)), curve.line((32mm, 7mm)), curve.line((40mm, 4mm)), curve.line((48mm, 6mm)), curve.line((56mm, 2mm)), curve.line((64mm, 5mm)), curve.line((72mm, 3mm)), curve.line((80mm, 7mm)), curve.line((88mm, 4mm)),
      )
    ]
    #place(top + left, dy: 7mm, dx: 4mm)[
      #curve(
        stroke: 0.5pt + white.transparentize(78%),
        curve.move((0mm, 4mm)), curve.line((6mm, 7mm)), curve.line((14mm, 2mm)), curve.line((22mm, 6mm)), curve.line((30mm, 1mm)), curve.line((38mm, 5mm)), curve.line((46mm, 8mm)), curve.line((54mm, 3mm)), curve.line((62mm, 6mm)), curve.line((70mm, 2mm)), curve.line((78mm, 5mm)), curve.line((86mm, 7mm)), curve.line((94mm, 3mm)),
      )
    ]
    #place(top + left, dy: 10mm, dx: 12mm)[
      #curve(
        stroke: 0.4pt + white.transparentize(82%),
        curve.move((0mm, 3mm)), curve.line((10mm, 7mm)), curve.line((18mm, 1mm)), curve.line((26mm, 5mm)), curve.line((34mm, 8mm)), curve.line((42mm, 2mm)), curve.line((50mm, 6mm)), curve.line((58mm, 4mm)), curve.line((66mm, 7mm)), curve.line((74mm, 1mm)),
      )
    ]
    #place(top + left, dy: 5mm, dx: 20mm)[
      #curve(
        stroke: 0.7pt + white.transparentize(75%),
        curve.move((0mm, 5mm)), curve.line((7mm, 1mm)), curve.line((15mm, 7mm)), curve.line((23mm, 4mm)), curve.line((31mm, 8mm)), curve.line((39mm, 2mm)), curve.line((47mm, 5mm)), curve.line((55mm, 3mm)), curve.line((63mm, 6mm)),
      )
    ]
    #place(top + left, dy: 13mm, dx: 6mm)[
      #curve(
        stroke: 0.3pt + white.transparentize(85%),
        curve.move((0mm, 7mm)), curve.line((9mm, 3mm)), curve.line((17mm, 6mm)), curve.line((25mm, 1mm)), curve.line((33mm, 5mm)), curve.line((41mm, 8mm)), curve.line((49mm, 2mm)), curve.line((57mm, 7mm)), curve.line((65mm, 4mm)), curve.line((73mm, 6mm)), curve.line((81mm, 2mm)),
      )
    ]
    #place(top + left, dy: 3mm, dx: 15mm)[
      #curve(
        stroke: 0.5pt + white.transparentize(80%),
        curve.move((0mm, 2mm)), curve.line((11mm, 6mm)), curve.line((20mm, 3mm)), curve.line((29mm, 7mm)), curve.line((38mm, 1mm)), curve.line((47mm, 5mm)), curve.line((56mm, 8mm)), curve.line((65mm, 4mm)), curve.line((74mm, 6mm)), curve.line((83mm, 2mm)),
      )
    ]
    #place(top + left, dy: 9mm, dx: 2mm)[
      #curve(
        stroke: 0.35pt + white.transparentize(87%),
        curve.move((0mm, 5mm)), curve.line((8mm, 8mm)), curve.line((16mm, 2mm)), curve.line((24mm, 6mm)), curve.line((32mm, 4mm)), curve.line((40mm, 7mm)), curve.line((48mm, 1mm)), curve.line((56mm, 5mm)), curve.line((64mm, 3mm)), curve.line((72mm, 8mm)), curve.line((80mm, 4mm)), curve.line((88mm, 6mm)), curve.line((96mm, 2mm)),
      )
    ]
    #place(top + left, dy: 15mm, dx: 10mm)[
      #curve(
        stroke: 0.45pt + white.transparentize(83%),
        curve.move((0mm, 4mm)), curve.line((12mm, 1mm)), curve.line((22mm, 7mm)), curve.line((32mm, 3mm)), curve.line((42mm, 6mm)), curve.line((52mm, 2mm)), curve.line((62mm, 8mm)), curve.line((72mm, 5mm)),
      )
    ]

    #align(center)[
      #v(4mm)
      #text(size: 24pt, weight: "black", fill: white)[POREMEĆAJI]
      #v(-2mm)
      #text(size: 24pt, weight: "black", fill: white)[SPAVANJA]
      #v(5mm)
      #line(length: 40%, stroke: 0.75pt + white.darken(15%))
      #v(5mm)
      #text(size: 11pt, weight: "bold", fill: white.darken(10%), tracking: 3pt)[DŽEPNI PRIRUČNIK]
      #v(2mm)
      #text(size: 8.5pt, fill: white.darken(15%), tracking: 1pt)[za liječnike obiteljske medicine]
      #v(5mm)
      #text(size: 9pt, style: "italic", fill: white.transparentize(15%))[Jer 9 od 10 poremećaja spavanja ostaje neprepoznato u ordinaciji]
    ]
  ]

  // --- Author section ---
  #v(1fr)
  #align(center)[
    #line(length: 30%, stroke: 0.5pt + color-teal.lighten(50%))
    #v(5mm)
    #text(size: 10.5pt, weight: "bold", fill: color-teal)[Alen Juginović, dr. med.]
    #v(2.5mm)
    #text(size: 8.5pt, fill: color-gray, tracking: 0.8pt)[#smallcaps[Harvard Medical School]]
    #v(1mm)
    #text(size: 8.5pt, fill: color-gray)[Neuroznanstvenik spavanja · Liječnik]
    #v(5mm)
    #line(length: 30%, stroke: 0.5pt + color-teal.lighten(50%))
  ]
  #v(1fr)
]

// --- O ovom priručniku (About This Guide) ---
#page(
  header: none,
  footer: none,
  margin: (top: 35mm, bottom: 25mm, left: 18mm, right: 18mm),
)[
  #v(4pt)
  #text(size: 14pt, weight: "bold", fill: color-teal)[O ovom priručniku]
  #v(2pt)
  #line(length: 100%, stroke: 1pt + color-teal)
  #v(10pt)

  #set text(size: 8.5pt, fill: rgb("#3d3d3d"))

  Poremećaji spavanja zahvaćaju svaku treću odraslu osobu, a većina nikada ne bude prepoznata u ordinaciji. Ovaj priručnik pruža liječnicima obiteljske medicine praktičan alat za prepoznavanje, početno liječenje i pravodobnu uputnicu — utemeljen na smjernicama AASM-a i ESRS-a, prilagođen hrvatskom sustavu primarne zdravstvene zaštite i HALMED-ovoj bazi lijekova.

  #v(6pt)

  Izrađen u dobroj vjeri kako bi pomogao liječnicima bolje razumjeti česte, a nedovoljno dijagnosticirane poremećaje spavanja.

  #v(10pt)
  #align(center)[#line(length: 40%, stroke: 0.3pt + color-gray.lighten(30%))]
  #v(10pt)

  #set text(size: 7.5pt, fill: color-gray)

  Ovaj priručnik ne zamjenjuje kliničku prosudbu ni aktualne smjernice. Farmakološki podaci prema HALMED bazi lijekova (veljača 2026.). Besplatan za dijeljenje u edukativne svrhe, bez sponzorstva farmaceutske industrije.

  #v(1fr)

  #align(center)[
    #line(length: 30%, stroke: 0.5pt + color-teal.lighten(50%))
    #v(4mm)
    #text(size: 9pt, weight: "bold", fill: color-teal)[Alen Juginović, dr. med.]
    #v(1.5mm)
    #text(size: 8pt, fill: color-gray, tracking: 0.8pt)[#smallcaps[Harvard Medical School]]
    #v(4mm)
    #text(size: 8pt, fill: color-gray)[Prvo izdanje, veljača 2026.]
    #v(4mm)
    #line(length: 30%, stroke: 0.5pt + color-teal.lighten(50%))
  ]
]

// --- Kako koristiti ovaj priručnik ---
#page(
  header: none,
  footer: none,
)[
  #v(4pt)
  #text(size: 14pt, weight: "bold", fill: color-teal)[Kako koristiti ovaj priručnik]
  #v(2pt)
  #line(length: 100%, stroke: 1pt + color-teal)
  #v(8pt)

  Svako poglavlje pokriva jedan poremećaj spavanja prema istom obrascu:

  #v(6pt)

  #brzi-pregled[
    Na početku svakog poglavlja. Tri koraka: *Prepoznaj → Učini → Uputi*. Dovoljno za prvu orijentaciju u ambulanti.
  ]

  #v(6pt)

  #crvena-zastavica[
    Stanja koja zahtijevaju posebnu pozornost — ne propustite ove znakove.
  ]

  #v(6pt)

  #zamka-box[
    Klinički kompas: česta praksa i preporučeni pristup. Uče se iz tuđih pogreški.
  ]

  #v(6pt)

  #kljucna-poruka[
    Sažetak najvažnijih poruka za kliničku praksu. Idealno za ponavljanje.
  ]

  #v(8pt)

  *Tablice farmakoterapije* u svakom poglavlju sadrže 5 stupaca:

  #v(4pt)

  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 3.5pt),
    stroke: none,
    row-gutter: 0pt,
    [#text(size: 8.5pt, weight: "bold")[Lijek]], [#text(size: 8.5pt)[Naziv (INN) i klasa]],
    [#text(size: 8.5pt, weight: "bold")[Doza / t½]], [#text(size: 8.5pt)[Preporučena doza i poluvrijeme eliminacije]],
    [#text(size: 8.5pt, weight: "bold")[Metabolizam]], [#text(size: 8.5pt)[Ključni CYP enzim ili put izlučivanja]],
    [#text(size: 8.5pt, weight: "bold")[Interakcije]], [#text(size: 8.5pt)[*✖* = kontraindicirana kombinacija · *⚠* = oprez, prilagoditi]],
    [#text(size: 8.5pt, weight: "bold")[HR]], [#text(size: 8.5pt)[Dostupnost u Hrvatskoj: ✓ (dostupan) · ○ (ograničeno/posebno odobrenje) · ✗ (nedostupan)]],
  )

  #v(4pt)
  #text(size: 8pt, weight: "bold", fill: color-teal)[Oznake interakcija]
  #v(2pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 3pt),
    stroke: none,
    row-gutter: 0pt,
    [#text(fill: color-red, weight: "bold")[✖]], [#text(size: 8pt)[Kontraindicirana kombinacija — ne propisivati zajedno]],
    [#text(fill: rgb("#d97706"), weight: "bold")[⚠]], [#text(size: 8pt)[Oprez — prilagoditi dozu ili pojačati praćenje]],
  )

  #v(6pt)

  Dodaci na kraju donose cjelovite farmakološke tablice, indeks lijekova, predložak dnevnika spavanja i upitnike za probir.
]

// --- Kratice ---
#page(
  header: none,
  footer: none,
)[
  #v(4pt)
  #text(size: 14pt, weight: "bold", fill: color-teal)[Kratice]
  #v(2pt)
  #line(length: 100%, stroke: 1pt + color-teal)
  #v(4pt)
  #text(size: 7.5pt, fill: color-gray, style: "italic")[Kratice označene s † specifične su za medicinu spavanja.]
  #v(6pt)

  #set text(size: 8.5pt)

  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 3.5pt),
    stroke: none,
    row-gutter: 0pt,
    [*AASM*], [American Academy of Sleep Medicine],
    [*AHI*], [Indeks apneja-hipopneja (_Apnea-Hypopnea Index_)],
    [*ASWPD*], [Poremećaj faze unaprijeđenog spavanja],
    [*ASV*], [Adaptivna servoventilacija],
    [*BMI*], [Indeks tjelesne mase],
    [*CBT-I*], [Kognitivno-bihevioralna terapija za nesanicu],
    [*COMISA†*], [Komorbidna nesanica i apneja u snu],
    [*CPAP*], [Kontinuirani pozitivni tlak u dišnim putevima],
    [*CSA*], [Centralna apneja u snu],
    [*CYP*], [Citokrom P450],
    [*dCBT-I*], [Digitalna CBT-I],
    [*DLMO†*], [_Dim Light Melatonin Onset_],
    [*DORA†*], [Dualni antagonist oreksina],
    [*DSWPD*], [Poremećaj faze odgođenog spavanja],
    [*EDS*], [Pretjerana dnevna pospanost],
    [*ESS*], [Epworth ljestvica pospanosti],
    [*ESRS*], [European Sleep Research Society],
    [*GABA*], [Gama-aminomaslačna kiselina],
    [*HALMED*], [Agencija za lijekove i medicinske proizvode],
    [*ICSD-3†*], [International Classification of Sleep Disorders, 3. izdanje],
    [*IH*], [Idiopatska hipersomnija],
    [*IRLS*], [International RLS Study Group Rating Scale],
    [*ISI*], [Insomnia Severity Index],
    [*IRT*], [Image Rehearsal Therapy],
    [*LOM*], [Liječnik obiteljske medicine],
    [*MAO*], [Monoamino-oksidaza],
    [*MED*], [Morfinski ekvivalent doze (_Morphine Equivalent Dose_)],
    [*MKB-10*], [Međunarodna klasifikacija bolesti, 10. revizija],
    [*MSLT†*], [Test multiplih latencija spavanja],
    [*NES*], [Sindrom noćnog jedenja],
    [*NREM*], [Non-REM spavanje],
    [*OSA*], [Opstruktivna apneja u snu],
    [*PLMD*], [Periodični pokreti udova u snu],
    [*PSG*], [Polisomnografija],
    [*PTSP*], [Posttraumatski stresni poremećaj],
    [*PZZ*], [Primarna zdravstvena zaštita],
    [*RBD*], [REM poremećaj ponašanja u snu],
    [*RBDSQ*], [RBD Screening Questionnaire],
    [*REM*], [_Rapid Eye Movement_ spavanje],
    [*RLS*], [Sindrom nemirnih nogu],
    [*SARI*], [Serotonin antagonist/reuptake inhibitor],
    [*SNRI*], [Inhibitor ponovne pohrane serotonina i noradrenalina],
    [*SOREMP†*], [_Sleep Onset REM Period_],
    [*SRED*], [Poremećaj hranjenja povezan sa spavanjem],
    [*SSRI*], [Selektivni inhibitor ponovne pohrane serotonina],
    [*STOP-BANG*], [Upitnik za probir OSA],
    [*TCA*], [Triciklički antidepresiv],
  )
]

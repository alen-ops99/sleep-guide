// ============================================================================
// Front Matter — Title page, How to use, Abbreviations
// ============================================================================

#import "../template.typ": *

// --- Title Page ---
#page(
  header: none,
  footer: none,
  margin: (top: 0mm, bottom: 20mm, left: 0mm, right: 0mm),
)[
  // --- Teal header band with title + decorative EEG-trace lines ---
  #block(
    width: 100%,
    inset: (x: 22mm, top: 28mm, bottom: 14mm),
    fill: color-teal,
  )[
    // Decorative wave-like lines (EEG / sleep trace motif)
    #place(top + center, dy: 8mm)[
      #stack(dir: ttb, spacing: 3.5pt,
        line(length: 30%, stroke: 0.5pt + white.transparentize(75%)),
        line(length: 55%, stroke: 0.5pt + white.transparentize(80%)),
        line(length: 40%, stroke: 0.5pt + white.transparentize(85%)),
      )
    ]

    #align(center)[
      #text(size: 8.5pt, fill: white.darken(15%), tracking: 2.5pt, weight: "medium")[ZA LIJEČNIKE OBITELJSKE MEDICINE]
      #v(6mm)
      #text(size: 24pt, weight: "black", fill: white)[POREMEĆAJI]
      #v(-2mm)
      #text(size: 24pt, weight: "black", fill: white)[SPAVANJA]
      #v(5mm)
      #line(length: 40%, stroke: 0.75pt + white.darken(15%))
      #v(5mm)
      #text(size: 11pt, weight: "bold", fill: white.darken(10%), tracking: 3pt)[DŽEPNI PRIRUČNIK]
    ]
  ]

  // --- Accent strip (darker teal) ---
  #block(
    width: 100%,
    height: 2mm,
    fill: color-teal.darken(20%),
    spacing: 0pt,
  )

  // --- Subtle light band with descriptors ---
  #block(
    width: 100%,
    inset: (x: 22mm, top: 10mm, bottom: 10mm),
    fill: color-gray-bg,
    spacing: 0pt,
  )[
    #align(center)[
      #text(size: 8.5pt, fill: color-gray, tracking: 0.5pt)[
        Prepoznavanje · Probir · Liječenje · Uputnica
      ]
      #v(1mm)
      #text(size: 8pt, fill: color-gray)[
        10 poremećaja spavanja s farmakoterapijom
      ]
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

  // --- Edition footer ---
  #align(center)[
    #text(size: 7.5pt, fill: color-teal, tracking: 0.3pt)[■]
    #h(3pt)
    #text(size: 7.5pt, fill: color-gray.lighten(20%), tracking: 1pt)[2026. · PRVO IZDANJE]
    #h(3pt)
    #text(size: 7.5pt, fill: color-teal, tracking: 0.3pt)[■]
  ]
]

// --- Copyright / Imprint ---
#page(
  header: none,
  footer: none,
  margin: (top: 35mm, bottom: 25mm, left: 18mm, right: 18mm),
)[
  #v(1fr)
  #set text(size: 7.5pt, fill: color-gray)

  *Poremećaji spavanja: Džepni priručnik za liječnike obiteljske medicine*\
  Prvo izdanje, veljača 2026.

  *Autor:* Alen Juginović, dr. med.\
  Harvard Medical School

  #v(4mm)

  Ovaj priručnik pruža klinički orijentiran pregled 10 najčešćih poremećaja spavanja relevantnih za primarnu zdravstvenu zaštitu u Republici Hrvatskoj. Namijenjen je kao edukativni materijal i brza referenca — ne zamjenjuje kliničku prosudbu niti važeće smjernice.

  #v(4mm)

  Farmakološki podaci provjereni prema HALMED bazi lijekova (veljača 2026). Dostupnost lijekova na hrvatskom tržištu može se promijeniti — za aktualno stanje konzultirajte #link("https://www.halmed.hr")[halmed.hr].

  #v(4mm)

  Ovaj priručnik je besplatan za preuzimanje i dijeljenje u edukativne svrhe.\
  Nije sponzoriran od strane farmaceutske industrije.

  #v(8mm)
  #line(length: 40%, stroke: 0.3pt + color-gray)
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
    Stanja koja zahtijevaju hitno usmjeravanje ili posebnu pozornost. Ne propuštajte ove znakove.
  ]

  #v(6pt)

  #zamka-box[
    Najčešće pogreške u praksi s ispravnim pristupom. Uče se iz tuđih grešaka.
  ]

  #v(6pt)

  #kljucna-poruka[
    Sažetak najvažnijih poruka za kliničku praksu. Idealno za ponavljanje.
  ]

  #v(8pt)

  *Tablice farmakoterapije* u svakom poglavlju sadrže 5 stupaca:

  #v(4pt)

  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 6pt, y: 3.5pt),
    stroke: none,
    row-gutter: 0pt,
    [*Lijek*], [Naziv (INN) i klasa],
    [*Doza / t½*], [Preporučena doza i poluvrijeme eliminacije],
    [*Metabolizam*], [Ključni CYP enzim ili put izlučivanja],
    [*Interakcije*], [*R* = major interakcija (kontraindicirana) · *Y* = umjerena (oprez)],
    [*HR*], [Dostupnost u Hrvatskoj: ✓ (dostupan) · ○ (ograničeno/posebno odobrenje) · ✗ (nedostupan)],
  )
  #set text(size: 9.5pt)

  #v(6pt)
  #text(weight: "bold", fill: color-teal, size: 9pt)[Što LOM može samostalno?]
  #v(3pt)

  #set text(size: 7pt)
  #table(
    columns: (auto, 1fr, 1fr, 1fr),
    inset: (x: 4pt, y: 3pt),
    fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
    stroke: 0.4pt + rgb("#d1d5db"),
    table.header(
      text(weight: "bold")[Poglavlje],
      text(weight: "bold")[LOM samostalno],
      text(weight: "bold")[LOM + specijalist],
      text(weight: "bold")[Specijalist vodi],
    ),
    [1. Nedovoljan san], [✓ potpuno], [], [],
    [2. Nesanica], [CBT-I, kratkoročni lijek], [Refraktorna], [],
    [3. OSA], [Probir, CPAP adherencija], [Dijagnostika, titracija], [],
    [4. Cirkadijani], [DSWPD, smjenski rad], [Refraktorni], [Non-24],
    [5. RLS], [Feritin, gabapentinoidi], [Augmentacija], [],
    [6. Noćne more], [IRT, prazosin], [PTSP], [],
    [7. NREM parasomnije], [Djeca, sigurnost], [Odrasli, ozljede], [Epilepsija DD],
    [8. Bruksizam], [Probir, buspiron], [OSA komorbiditet], [],
    [9. RBD], [Sigurnost, melatonin], [], [Neurolog uvijek],
    [10. Hipersomnolencija], [Probir, isključiti druge], [], [Neurolog uvijek],
  )
  #set text(size: 9.5pt)

  #v(6pt)

  *Dodaci na kraju* donose cjelovite farmakološke tablice, matricu interakcija, prilagodbe doza za posebne populacije, upitnike za probir i predložak uputnice.
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
    [*COMISA*], [Komorbidna nesanica i apneja u snu],
    [*CPAP*], [Kontinuirani pozitivni tlak u dišnim putevima],
    [*CSA*], [Centralna apneja u snu],
    [*CYP*], [Citokrom P450],
    [*dCBT-I*], [Digitalna CBT-I],
    [*DLMO*], [_Dim Light Melatonin Onset_],
    [*DORA*], [Dualni antagonist oreksina],
    [*DSWPD*], [Poremećaj faze odgođenog spavanja],
    [*EDS*], [Pretjerana dnevna pospanost],
    [*ESS*], [Epworth ljestvica pospanosti],
    [*ESRS*], [European Sleep Research Society],
    [*GABA*], [Gama-aminomaslačna kiselina],
    [*HALMED*], [Agencija za lijekove i medicinske proizvode],
    [*ICSD-3*], [International Classification of Sleep Disorders, 3. izdanje],
    [*IH*], [Idiopatska hipersomnija],
    [*IRLS*], [International RLS Study Group Rating Scale],
    [*ISI*], [Insomnia Severity Index],
    [*IRT*], [Image Rehearsal Therapy],
    [*LOM*], [Liječnik obiteljske medicine],
    [*MAO*], [Monoamino-oksidaza],
    [*MED*], [Morfinski ekvivalent doze (_Morphine Equivalent Dose_)],
    [*MKB-10*], [Međunarodna klasifikacija bolesti, 10. revizija],
    [*MSLT*], [Test multiplih latencija spavanja],
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
    [*SRED*], [Poremećaj hranjenja povezan sa spavanjem],
    [*SSRI*], [Selektivni inhibitor ponovne pohrane serotonina],
    [*STOP-BANG*], [Upitnik za probir OSA],
    [*TCA*], [Triciklički antidepresiv],
  )
]

// ============================================================================
// Sažetak: Samostalnost LOM-a po poremećajima
// ============================================================================

#import "../template.typ": *

#page(header: none)[
  #v(4pt)
  #text(size: 13pt, weight: "bold", fill: color-teal)[Sažetak: Samostalnost LOM-a po poremećajima]
  #v(2pt)
  #line(length: 100%, stroke: 1pt + color-teal)
  #v(6pt)

  #set text(size: 8pt)

  #text(fill: color-gray)[Pregled razine samostalnosti liječnika obiteljske medicine (LOM) za svaki poremećaj spavanja — od potpuno samostalnog zbrinjavanja do obvezne uputnice specijalistu.]

  #v(6pt)

  #table(
    columns: (auto, 1fr, 1fr, 1fr),
    inset: (x: 4pt, y: 3.5pt),
    fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
    stroke: 0.4pt + rgb("#d1d5db"),
    table.header(
      text(weight: "bold")[Poglavlje],
      text(weight: "bold")[LOM samostalno],
      text(weight: "bold")[LOM + specijalist],
      text(weight: "bold")[Specijalist vodi],
    ),
    [*1. Nesanica*], [CBT-I elementi, kratkoročni lijek], [Refraktorna nesanica, ovisnost], [],
    [*2. Nedovoljan san*], [✓ Potpuno — dnevnik, edukacija, terapijski test], [], [],
    [*3. OSA*], [STOP-BANG probir, CPAP adherencija], [Dijagnostika (PSG), titracija], [],
    [*4. Cirkadijani*], [DSWPD (melatonin + svjetlo), smjenski rad], [Refraktorni slučajevi], [Non-24 (slijepe osobe)],
    [*5. RLS*], [Feritin (cilj ≥100), gabapentinoidi], [Augmentacija, refraktorni], [],
    [*6. Noćne more*], [IRT tehnika, prazosin], [PTSP → psihijatar], [],
    [*7. NREM parasomnije*], [Djeca: edukacija, sigurnost], [Odrasli: ozljede, novonastale], [DD epilepsija],
    [*8. Bruksizam*], [Probir, stomatolog, buspiron], [OSA komorbiditet], [],
    [*9. RBD*], [Sigurnost, melatonin, RBDSQ], [], [Neurolog — uvijek],
    [*10. Hipersomnolencija*], [ESS probir, isključiti druge uzroke], [], [Neurolog — uvijek],
  )

  #v(8pt)

  #block(
    width: 100%,
    inset: (x: 10pt, y: 8pt),
    radius: 3pt,
    stroke: (left: 3pt + color-green),
    fill: color-green.lighten(92%),
    [
      #text(weight: "bold", fill: color-green, size: 8pt)[KLJUČNA PORUKA]
      #v(3pt)
      #set text(size: 7.5pt)
      LOM može *samostalno dijagnosticirati i liječiti* nedovoljan san, započeti CBT-I za nesanicu, probirati OSA-u i cirkadijane poremećaje te zbrinuti blagi do umjereni RLS. Za RBD i hipersomnolenciju uloga LOM-a je *prepoznavanje i pravodobna uputnica* — jer rana dijagnoza mijenja tijek bolesti.
    ]
  )
]

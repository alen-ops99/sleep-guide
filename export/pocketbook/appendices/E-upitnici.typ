// ============================================================================
// Dodatak E: Upitnici za probir
// ============================================================================

#import "../template.typ": *

#appendix-title(letter: "E", title: "Upitnici za probir")

#set text(size: 8pt)

#text(fill: color-gray, style: "italic")[Kompaktne verzije pet najvažnijih upitnika za poremećaje spavanja. Svaki se može primijeniti u čekaonici ili za vrijeme pregleda.]

#v(6pt)

// ─── 1. ESS ─────────────────────────────────────────────────────────────
<upitnik-ess>
== Epworthova ljestvica pospanosti (ESS)

#text(fill: color-gray, size: 7.5pt)[Procjena dnevne pospanosti. Pacijent ocjenjuje vjerojatnost zasipanja (0–3) u 8 situacija.]

#v(3pt)
#table(
  columns: (auto, 1fr, auto),
  inset: (x: 5pt, y: 3pt),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[],
    text(weight: "bold")[Situacija],
    text(weight: "bold")[Bodovi (0–3)],
  ),
  [1.], [Sjedenje i čitanje], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [2.], [Gledanje televizije], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [3.], [Mirno sjedenje na javnom mjestu (kino, sastanak)], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [4.], [Kao putnik u automobilu ≥1 sat bez pauze], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [5.], [Ležanje popodne kad okolnosti dopuštaju], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [6.], [Sjedenje i razgovor s nekim], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [7.], [Mirno sjedenje nakon ručka bez alkohola], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [8.], [U automobilu zaustavljenom u prometu na nekoliko minuta], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  table.cell(colspan: 2, align: right)[#text(weight: "bold")[UKUPNO:]], [#box(width: 22pt, stroke: (bottom: 1pt + luma(120)))[]/24],
)

#v(2pt)
#text(size: 7pt)[*0* = nikad ne bih zadrijemao/la · *1* = mala vjerojatnost · *2* = umjerena · *3* = velika vjerojatnost]
#v(2pt)
#table(
  columns: (1fr, 1.5fr),
  inset: (x: 5pt, y: 2.5pt),
  fill: (_, row) => if row == 0 { cat-hypersomnia.lighten(88%) } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Zbroj],
    text(weight: "bold")[Interpretacija],
  ),
  [0–10], [Normalna dnevna pospanost],
  [*11–15*], [*Umjerena pospanost — indicirana obrada*],
  [*≥16*], [*Teška pospanost — hitna obrada*],
)
#v(1pt)
#text(size: 6.5pt, fill: color-gray)[_Upišite zbroj bodova i usporedite s interpretacijom. ESS ≥11 indicira daljnju obradu._]

#v(8pt)

// ─── 2. ISI ─────────────────────────────────────────────────────────────
<upitnik-isi>
== Indeks težine nesanice (ISI; _Insomnia Severity Index_)

#text(fill: color-gray, size: 7.5pt)[7 pitanja o težini nesanice u zadnjih 2 tjedna. Svako se ocjenjuje 0–4.]

#v(3pt)
#table(
  columns: (auto, 1fr, auto),
  inset: (x: 5pt, y: 3pt),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[],
    text(weight: "bold")[Pitanje],
    text(weight: "bold")[Bodovi (0–4)],
  ),
  [1.], [Teškoća usnivanja], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [2.], [Teškoća održavanja sna], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [3.], [Prerano buđenje], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [4.], [Zadovoljstvo trenutnim obrascem spavanja], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [5.], [Utjecaj na dnevno funkcioniranje], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [6.], [Koliko je problem spavanja vidljiv drugima], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [7.], [Koliko ste zabrinuti zbog problema sa spavanjem], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  table.cell(colspan: 2, align: right)[#text(weight: "bold")[UKUPNO:]], [#box(width: 22pt, stroke: (bottom: 1pt + luma(120)))[]/28],
)

#v(2pt)
#text(size: 7pt)[*0* = nimalo · *1* = blago · *2* = umjereno · *3* = jako · *4* = izrazito]
#v(2pt)
#table(
  columns: (1fr, 1.5fr),
  inset: (x: 5pt, y: 2.5pt),
  fill: (_, row) => if row == 0 { cat-insomnia.lighten(88%) } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Zbroj],
    text(weight: "bold")[Interpretacija],
  ),
  [0–7], [Nema klinički značajne nesanice],
  [8–14], [Subklinička (blaga) nesanica],
  [*15–21*], [*Umjerena — indicirana intervencija*],
  [*22–28*], [*Teška — hitna intervencija*],
)
#v(1pt)
#text(size: 6.5pt, fill: color-gray)[_Upišite zbroj bodova. ISI ≥15 indicira intervenciju; pad ≥8 bodova = klinički značajan odgovor._]

#v(2pt)
#text(size: 7pt, fill: color-gray)[Klinički značajan odgovor = pad ≥8 bodova; remisija = ISI < 8.]

#v(8pt)

// ─── 3. STOP-BANG ────────────────────────────────────────────────────────
<upitnik-stop-bang>
== STOP-BANG upitnik

#text(fill: color-gray, size: 7.5pt)[Probir za opstruktivnu apneju u snu (OSA). 8 da/ne pitanja.]

#v(3pt)
#table(
  columns: (auto, 1fr, auto),
  inset: (x: 5pt, y: 3pt),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[],
    text(weight: "bold")[Pitanje],
    text(weight: "bold")[Da / Ne],
  ),
  [*S*], [Hrčete li glasno (čuje se kroz zatvorena vrata)?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [*T*], [Osjećate li se umorno, pospano ili iscrpljeno danju?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [*O*], [Je li itko primijetio da prestajete disati u snu?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [*P*], [Liječite li se od visokog krvnog tlaka?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [*B*], [BMI > 35 kg/m²?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [*A*], [Dob > 50 godina?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [*N*], [Opseg vrata > 40 cm?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [*G*], [Muški spol?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  table.cell(colspan: 2, align: right)[#text(weight: "bold")[UKUPNO:]], [#box(width: 22pt, stroke: (bottom: 1pt + luma(120)))[]/8],
)

#v(2pt)
#table(
  columns: (1fr, 1.5fr),
  inset: (x: 5pt, y: 2.5pt),
  fill: (_, row) => if row == 0 { cat-breathing.lighten(88%) } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Zbroj],
    text(weight: "bold")[Interpretacija],
  ),
  [0–2], [Niski rizik],
  [*3–4*], [*Intermedijarni → uputiti na obradu*],
  [*≥5*], [*Visoki → hitno uputiti*],
)
#v(1pt)
#text(size: 6.5pt, fill: color-gray)[_Upišite zbroj „Da“ odgovora. ≥3 boda uz kliničku sumnju = uputnica za sleep studiju._]

#v(2pt)
#text(size: 7pt, fill: color-gray)[STOP-BANG ima nižu osjetljivost kod žena — kod žena s rezultatom 2–3 i kliničkom sumnjom ipak uputite.]

#v(8pt)

// ─── 4. RBDSQ ────────────────────────────────────────────────────────────
<upitnik-rbdsq>
== Upitnik za probir poremećaja ponašanja u REM snu (RBDSQ)

#text(fill: color-gray, size: 7.5pt)[Probir za poremećaj ponašanja u REM snu (RBD). 13 da/ne pitanja. Primjenjivo u čekaonici.]

#v(3pt)
#table(
  columns: (auto, 1fr, auto),
  inset: (x: 5pt, y: 3pt),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[],
    text(weight: "bold")[Pitanje],
    text(weight: "bold")[Da / Ne],
  ),
  [1.], [Imam ponekad vrlo živopisne snove.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [2.], [Moji snovi često imaju agresivan ili akcijski sadržaj.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [3.], [Pokreti u snu odgovaraju sadržaju sna.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [4.], [Znam da rukama i nogama udarcem u snu.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [5.], [Time sam ozlijedio/la sebe ili partnera.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [6.], [Govorim, vičem ili psujem u snu.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [7.], [Moje pokrete u snu primijetio/la je partner ili ukućanin.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [8.], [Sjećam se sadržaja snova kad se probudim.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [9.], [San mi je često prekinut.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [10.], [Imam/imao sam bolest živčanog sustava.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [11.], [Moje se stanje sna promijenilo u zadnje vrijeme.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [12.], [Imam problema s njuhom (oslabljen/izgubljen).], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [13.], [Uzimam antidepresive.], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  table.cell(colspan: 2, align: right)[#text(weight: "bold")[UKUPNO:]], [#box(width: 22pt, stroke: (bottom: 1pt + luma(120)))[]/13],
)

#v(2pt)
#table(
  columns: (1fr, 1.5fr),
  inset: (x: 5pt, y: 2.5pt),
  fill: (_, row) => if row == 0 { cat-parasomnia.lighten(88%) } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Zbroj],
    text(weight: "bold")[Interpretacija],
  ),
  [0–4], [Negativan probir],
  [*≥5*], [*Pozitivan probir → uputiti na polisomnografiju (PSG)*],
)
#v(1pt)
#text(size: 6.5pt, fill: color-gray)[_Upišite zbroj „Da“ odgovora. ≥5 bodova = pozitivan probir → PSG za potvrdu._]

#v(2pt)
#text(size: 7pt, fill: color-gray)[Osjetljivost 96%, specifičnost 56%. Znatan broj lažno pozitivnih — PSG je neophodna za potvrdu dijagnoze.]

#v(8pt)

// ─── 5. IRLS ─────────────────────────────────────────────────────────────
<upitnik-irls>
== Međunarodna ljestvica za sindrom nemirnih nogu (IRLS)

#text(fill: color-gray, size: 7.5pt)[Procjena težine sindroma nemirnih nogu (RLS). 10 pitanja, svako 0–4. Primjenjivo nakon potvrde dijagnoze.]

#v(3pt)
#table(
  columns: (auto, 1fr, auto),
  inset: (x: 5pt, y: 3pt),
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[],
    text(weight: "bold")[Pitanje],
    text(weight: "bold")[Bodovi (0–4)],
  ),
  [1.], [Koliko intenzivne su neugodne senzacije u nogama?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [2.], [Koliko snažan je nagon za pomicanjem nogu?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [3.], [Koliko pomicanje nogu ublažava nelagodu?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [4.], [Koliko je poremećen san zbog RLS-a?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [5.], [Koliko ste umorni/pospani zbog RLS-a?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [6.], [Koliko je RLS težak ukupno?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [7.], [Koliko često imate simptome?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [8.], [Koliko dugo u prosjeku traje epizoda?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [9.], [Koliko RLS utječe na svakodnevne aktivnosti?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  [10.], [Koliko RLS utječe na raspoloženje?], [#box(width: 22pt, stroke: (bottom: 0.5pt + luma(180)))[]],
  table.cell(colspan: 2, align: right)[#text(weight: "bold")[UKUPNO:]], [#box(width: 22pt, stroke: (bottom: 1pt + luma(120)))[]/40],
)

#v(2pt)
#text(size: 7pt)[*0* = nimalo · *1* = blago · *2* = umjereno · *3* = jako · *4* = izrazito]
#v(2pt)
#table(
  columns: (1fr, 1.5fr),
  inset: (x: 5pt, y: 2.5pt),
  fill: (_, row) => if row == 0 { cat-movement.lighten(88%) } else { white },
  stroke: 0.4pt + rgb("#d1d5db"),
  table.header(
    text(weight: "bold")[Zbroj],
    text(weight: "bold")[Interpretacija],
  ),
  [1–10], [Blagi RLS],
  [*11–20*], [*Umjereni — farmakoterapija indicirana*],
  [*21–30*], [*Teški*],
  [*31–40*], [*Vrlo teški*],
)
#v(1pt)
#text(size: 6.5pt, fill: color-gray)[_Upišite zbroj bodova. ≥11 indicira farmakoterapiju; ≥21 = teški RLS._]

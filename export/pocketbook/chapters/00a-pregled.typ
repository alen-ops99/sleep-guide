// ============================================================================
// Brzi vodič — Quick Reference (1 page)
// ============================================================================

#import "../template.typ": *

// ---------------------------------------------------------------------------
// Helper: ultra-compact disorder card (inline Pitajte/Učinite/Uputite)
// ---------------------------------------------------------------------------
#let disorder-card(number: 0, name: "", tagline: "", cat-color: color-teal, pitajte: "", ucinite: "", uputite: "") = {
  block(
    width: 100%,
    below: 4pt,
    inset: (left: 7pt, right: 5pt, top: 3pt, bottom: 3pt),
    radius: 1.5pt,
    stroke: (left: 2.5pt + cat-color),
    fill: cat-color.lighten(95%),
    [
      #text(size: 7.5pt, weight: "bold", fill: cat-color)[#number. #name]
      #h(4pt)
      #text(size: 6.5pt, fill: color-gray)[— #tagline]
      #v(1pt)
      #set text(size: 7pt)
      *Pitajte:* #pitajte · *Učinite:* #ucinite · *Uputite:* #uputite
    ]
  )
}

// ═══════════════════════════════════════════════════════════════════════════
// SINGLE PAGE — All 10 disorders + Zlatna pravila
// ═══════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #text(size: 12pt, weight: "bold", fill: color-teal)[Brzi vodič: Pitaj · Učini · Uputi]
  #v(1pt)
  #line(length: 100%, stroke: 1pt + color-teal)
  #v(1pt)
  #text(size: 6.5pt, fill: color-gray)[Za svaki poremećaj: ključno pitanje za probir, prvi korak u ambulanti, kriterij za uputnicu.]
  #v(2pt)
  #text(size: 6.5pt, fill: color-gray, style: "italic")[Ova stranica dizajnirana je za ispis i laminiranje — idealno za džep bijele kute.]
  #v(2pt)
  #v(3pt)

  #disorder-card(
    number: 1,
    name: "NEDOVOLJAN SAN",
    tagline: "najčešći uzrok EDS-a",
    cat-color: cat-hypersomnia,
    pitajte: [„Koliko sati spavate radnim danom?" Razlika ≥ 2 h radni/vikend?],
    ucinite: [Dnevnik spavanja 2 tj. Test: produljenje sna na 8–9 h × 2 tj.],
    uputite: [EDS perzistira unatoč snu ≥ 7 h kroz ≥ 2 tjedna.],
  )

  #disorder-card(
    number: 2,
    name: "NESANICA",
    tagline: "najčešća pritužba na san",
    cat-color: cat-insomnia,
    pitajte: [ISI (≥15 = intervencija). „Hrčete li?" — COMISA 30–50%!],
    ucinite: [CBT-I: restrikcija sna + kontrola podražaja. BZD ≤ 4 tj.],
    uputite: [Bez poboljšanja 4–6 tj. Sumnja na OSA. Ovisnost o hipnoticima.],
  )

  #disorder-card(
    number: 3,
    name: "OSA (+CSA)",
    tagline: "dramatično poddijagnosticirana",
    cat-color: cat-breathing,
    pitajte: [STOP-BANG (≥3 = uputiti). Vrat >40 cm. Žene: umor, nesanica.],
    ucinite: [STOP-BANG + ESS. Rezistentna HTN = obavezan probir!],
    uputite: [STOP-BANG ≥3. Pospanost za volanom. CSA: samo PSG.],
  )

  #disorder-card(
    number: 4,
    name: "CIRKADIJANI",
    tagline: "problem vremena, ne kvalitete",
    cat-color: cat-circadian,
    pitajte: [„Spavate li dobro vikendom?" DA → cirkadijani, ne nesanica.],
    ucinite: [DSWPD: melatonin 0,5–3 mg u 18–19h + jutarnje svjetlo.],
    uputite: [Bez odgovora na kronoterapiju nakon 4–6 tjedana.],
  )

  #disorder-card(
    number: 5,
    name: "RLS I PLMD",
    tagline: "većina nedijagnosticirana",
    cat-color: cat-movement,
    pitajte: [Nagon za pomicanjem + mirovanje pogoršava + navečer.],
    ucinite: [Feritin (cilj ≥100!). Gabapentin 300 mg. Revizija SSRI-ja.],
    uputite: [Augmentacija. Dva neuspjeha liječenja. Atipična prezentacija.],
  )

  #disorder-card(
    number: 6,
    name: "NOĆNE MORE",
    tagline: "50–70% s PTSP-om",
    cat-color: cat-parasomnia,
    pitajte: [„Uznemirujući snovi?" Uvijek o traumi. Suicidalni rizik!],
    ucinite: [IRT (naučite pacijenta u 15 min). Prazosin 1–6 mg (PTSP).],
    uputite: [PTSP. Suicidalna ideacija = HITNO. Bez odgovora > 8 tj.],
  )

  #disorder-card(
    number: 7,
    name: "NREM PARASOMNIJE",
    tagline: "mjesečarenje, strahovi",
    cat-color: cat-parasomnia,
    pitajte: [Kada noću? Oči otvorene? Sjeća li se? (razlika od RBD-a)],
    ucinite: [Sigurnost! Ukloniti okidače: OSA, zolpidem, deprivacija.],
    uputite: [Novonastale u odraslog. Ozljede. Stereotipne epizode.],
  )

  #disorder-card(
    number: 8,
    name: "BRUKSIZAM",
    tagline: "25–50% ima i OSA-u",
    cat-color: cat-movement,
    pitajte: [„Škrgućete zubima?" Palpirajte maseter. Pitajte o hrkanju!],
    ucinite: [Stomatolog → udlaga. STOP-BANG. SSRI? → buspiron 5–10 mg.],
    uputite: [Stomatolog (uvijek). OSA sumnja. Refraktorno → neurolog.],
  )

  #disorder-card(
    number: 9,
    name: "RBD",
    tagline: ">80% razvit će neurodegeneraciju",
    cat-color: cat-parasomnia,
    pitajte: [Partner: „Udara, viče, pada iz kreveta?" RBDSQ ≥5.],
    ucinite: [Sigurnost (madrac na pod!). Melatonin 3–6 mg. Revizija SSRI.],
    uputite: [Svaku sumnju → neurolog. Parkinsonizam = HITNO.],
  )

  #disorder-card(
    number: 10,
    name: "HIPERSOMNOLENCIJA",
    tagline: "narkolepsija + IH",
    cat-color: cat-hypersomnia,
    pitajte: [„Slabost pri smijehu?" (katapleksija). ESS ≥10 bez uzroka.],
    ucinite: [Isključiti nedovoljan san (2 tj.). NE stimulanse!],
    uputite: [Svaku sumnju → neurolog / centar za spavanje.],
  )

  #v(3pt)

  // --- ZLATNA PRAVILA ---
  #block(
    width: 100%,
    inset: (left: 7pt, right: 5pt, top: 3pt, bottom: 3pt),
    radius: 1.5pt,
    stroke: (left: 2.5pt + color-teal),
    fill: color-teal.lighten(95%),
    [
      #text(weight: "bold", fill: color-teal, size: 7.5pt)[ZLATNA PRAVILA]
      #v(1pt)
      #set text(size: 7pt)
      + *Nedovoljan san* je najčešći uzrok EDS-a — isključiti prije MSLT-a
      + Kod *svake nesanice* pitajte o hrkanju — COMISA u 30–50%
      + Feritin „normalan" (30) *≠ dovoljan za RLS* — cilj ≥100
      + *STOP-BANG ≥3 = uputnica* — ne odgađajte
      + *Novo izvođenje snova >50 g. nikada nije benigno* — neurolog
      + *Nikada sedative bez isključenja OSA-e*
    ]
  )
]

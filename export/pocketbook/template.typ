// ============================================================================
// Džepni priručnik za spavanje 2026 — Design System (v2 — post-audit)
// Author: Alen Juginović, MD
// ============================================================================

// --- Color Palette ---
#let color-teal    = rgb("#0f766e")   // Headings, chapter titles, default
#let color-orange  = rgb("#f97316")   // Warnings, zamke
#let color-green   = rgb("#2e7d32")   // Brzi pregled boxes
#let color-red     = rgb("#c62828")   // Crvene zastavice
#let color-blue    = rgb("#1565c0")   // Ključne poruke
#let color-gray-bg = rgb("#f5f5f5")   // Light background for tables
#let color-gray    = rgb("#4b5563")   // Subtle text (darkened for contrast)

// --- Category Colors (ICSD-3 groups, used for chapter color-coding) ---
#let cat-insomnia      = rgb("#4338CA")   // Indigo — Nesanica
#let cat-breathing     = rgb("#2563EB")   // Blue — Poremećaji disanja (OSA, CSA)
#let cat-hypersomnia   = rgb("#B45309")   // Amber — Hipersomnolencija (nedov. san, narkolepsija, IH)
#let cat-circadian     = rgb("#C2410C")   // Orange — Cirkadijani poremećaji
#let cat-parasomnia    = rgb("#BE185D")   // Rose — Parasomnije (noćne more, NREM, RBD)
#let cat-movement      = rgb("#047857")   // Emerald — Poremećaji pokreta (RLS, bruksizam)

// --- Page Setup (A5) ---
#let page-width  = 148mm
#let page-height = 210mm
#let binding-offset = 4mm             // Extra inside margin for binding

// --- Reusable Components ---

// Colored box with distinct structural markers for grayscale printing
// Each box type has a unique border pattern that survives B&W printing
#let info-box(
  title: "",
  color: color-teal,
  icon: "",
  border-style: "left",  // "left", "full", "left-bottom", "left-dashed"
  body,
) = {
  let stroke-spec = if border-style == "full" {
    1.5pt + color
  } else if border-style == "left-bottom" {
    (left: 3pt + color, bottom: 1pt + color)
  } else if border-style == "left-dashed" {
    (left: stroke(paint: color, thickness: 3pt, dash: "dashed"))
  } else {
    (left: 3pt + color)
  }
  block(
    width: 100%,
    inset: (x: 10pt, y: 8pt),
    radius: 3pt,
    stroke: stroke-spec,
    fill: color.lighten(92%),
    [
      #text(weight: "bold", fill: color, size: 8.5pt)[#icon #title]
      #v(3pt)
      #set text(size: 8.5pt)
      #body
    ]
  )
}

// Brzi pregled box (green — Quick Overview) — double top border
#let brzi-pregled(body) = {
  block(
    width: 100%,
    inset: (x: 10pt, y: 8pt),
    radius: 3pt,
    stroke: (top: 3pt + color-green, left: 3pt + color-green),
    fill: color-green.lighten(92%),
    [
      #text(weight: "bold", fill: color-green, size: 8.5pt)[▸ BRZI PREGLED]
      #v(3pt)
      #set text(size: 8.5pt)
      #body
    ]
  )
}

// Crvene zastavice box (red — Red Flags) — full border (unique silhouette)
#let crvena-zastavica(body) = {
  info-box(
    title: "CRVENE ZASTAVICE",
    color: color-red,
    icon: "▲",
    border-style: "full",
    body
  )
}

// Ključne poruke box (blue — Key Messages) — left + bottom border (L-shape)
#let kljucna-poruka(body) = {
  info-box(
    title: "KLJUČNE PORUKE",
    color: color-blue,
    icon: "■",
    border-style: "left-bottom",
    body
  )
}

// Zamke box (orange — Common Pitfalls) — dashed left border
#let zamka-box(body) = {
  info-box(
    title: "ČESTE ZAMKE",
    color: color-orange,
    icon: "◆",
    border-style: "left-dashed",
    body
  )
}

// Clinical pearl inline
#let pearl(body) = {
  block(
    width: 100%,
    inset: (x: 8pt, y: 5pt),
    radius: 2pt,
    fill: rgb("#fffbeb"),
    stroke: (left: 2pt + color-orange),
    text(size: 8pt, style: "italic")[*Klinički savjet:* #body]
  )
}

// Evidence grade superscript
#let evidence(grade) = {
  super(text(size: 6pt, fill: color-gray)[#grade])
}

// Cross-reference helper — use with Typst labels
// Usage: #see(<ch2-osa>) produces "(v. str. X)"
#let see(target) = {
  link(target)[_(v. str. #context { let loc = query(target).first().location(); str(counter(page).at(loc).first()) })_]
}

// --- Pharmacology table (in-chapter, 5-column compact) ---
// Columns: Lijek | Doza + t½ | Metabolizam | Interakcije | HR
#let pharma-table(data) = {
  set text(size: 8pt)
  table(
    columns: (1.2fr, 1fr, 0.8fr, 1.5fr, 0.4fr),
    fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
    align: (left, left, left, left, center),
    inset: 5pt,
    stroke: 0.4pt + rgb("#d1d5db"),
    table.header(
      text(weight: "bold")[Lijek],
      text(weight: "bold")[Doza / t½],
      text(weight: "bold")[Metabolizam],
      text(weight: "bold")[Ključne interakcije],
      text(weight: "bold")[HR],
    ),
    ..data.flatten()
  )
}

// Appendix pharmacology table (landscape, full detail)
#let pharma-table-full(data) = {
  set text(size: 7pt)
  table(
    columns: (1fr, 0.7fr, 0.8fr, 0.4fr, 0.6fr, 0.7fr, 1fr, 0.7fr, 0.5fr),
    fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
    align: left,
    inset: 3.5pt,
    stroke: 0.4pt + rgb("#d1d5db"),
    table.header(
      text(weight: "bold")[Lijek (INN)],
      text(weight: "bold")[Klasa],
      text(weight: "bold")[Doza],
      text(weight: "bold")[t½],
      text(weight: "bold")[CYP / Izluč.],
      text(weight: "bold")[Ključne interakcije],
      text(weight: "bold")[Posebne pop.],
      text(weight: "bold")[Napomene],
      text(weight: "bold")[HR],
    ),
    ..data.flatten()
  )
}

// Referral table
#let referral-table(data) = {
  set text(size: 8pt)
  table(
    columns: (1.5fr, 1fr, 1.5fr),
    fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
    align: left,
    inset: 5pt,
    stroke: 0.4pt + rgb("#d1d5db"),
    table.header(
      text(weight: "bold")[Uputiti kada...],
      text(weight: "bold")[Kamo],
      text(weight: "bold")[Razlog],
    ),
    ..data.flatten()
  )
}

// Zamka (pitfall) table — two columns
#let zamka-table(data) = {
  set text(size: 8pt)
  table(
    columns: (1fr, 1fr),
    fill: (_, row) => if row == 0 { color-orange.lighten(88%) } else if calc.rem(row, 2) == 0 { rgb("#fff7ed") } else { white },
    align: left,
    inset: 5pt,
    stroke: 0.4pt + rgb("#d1d5db"),
    table.header(
      text(weight: "bold", fill: color-orange)[Pogreška],
      text(weight: "bold", fill: color-green)[Ispravni pristup],
    ),
    ..data.flatten()
  )
}

// Chapter title — emits heading(level:1) for TOC + PDF bookmarks
// Accepts optional `color` param to match ICSD-3 category color-coding
#let chapter-title(number: 0, title: "", mkb: "", icsd: "", color: color-teal) = {
  // Hidden heading for TOC/bookmark generation (rendered zero-height by show rule)
  heading(level: 1, numbering: none)[#str(number). #title]
  // Visual chapter title
  v(6pt)
  text(size: 22pt, weight: "black", fill: color)[#number.]
  h(4pt)
  text(size: 14pt, weight: "bold", fill: color)[#title]
  v(4pt)
  text(size: 7.5pt, fill: color-gray)[
    *MKB-10:* #mkb #h(8pt) | #h(8pt) *ICSD-3:* #icsd
  ]
  v(4pt)
  line(length: 100%, stroke: 1.5pt + color)
  v(8pt)
}

// Appendix title — emits heading(level:1) for TOC + PDF bookmarks
#let appendix-title(letter: "", title: "") = {
  heading(level: 1, numbering: none)[Dodatak #letter. #title]
  v(6pt)
  text(size: 18pt, weight: "black", fill: color-teal)[Dodatak #letter.]
  h(4pt)
  text(size: 13pt, weight: "bold", fill: color-teal)[#title]
  v(4pt)
  line(length: 100%, stroke: 1.5pt + color-teal)
  v(8pt)
}

// Interaction matrix cell
#let ix-cell(level) = {
  if level == "R" {
    table.cell(fill: rgb("#fecaca"))[#text(weight: "bold", fill: color-red)[R]]
  } else if level == "Y" {
    table.cell(fill: rgb("#fef3c7"))[#text(weight: "bold", fill: rgb("#d97706"))[Y]]
  } else {
    []
  }
}

// Per-chapter recommended reading
#let literatura(refs) = {
  v(6pt)
  line(length: 100%, stroke: 0.3pt + color-gray.lighten(50%))
  v(3pt)
  text(weight: "bold", fill: color-gray, size: 8pt)[PREPORUČENA LITERATURA]
  v(2pt)
  set text(size: 7.5pt, fill: color-gray)
  for ref in refs {
    block(inset: (left: 8pt, y: 1pt))[#ref]
  }
}

// --- Master Document Template ---
#let pocketbook(
  title: "Džepni priručnik za spavanje",
  author: "Alen Juginović, MD",
  year: "2026",
  body,
) = {
  // Document metadata
  set document(
    title: title + " " + year,
    author: author,
  )

  // Page setup — A5 with symmetric margins (digital-first)
  set page(
    width: page-width,
    height: page-height,
    margin: (top: 18mm, bottom: 18mm, left: 17mm, right: 17mm),
    header: context {
      if counter(page).get().first() > 4 {
        set text(size: 7pt, fill: color-gray)
        // Find current chapter title from last level-1 heading
        let chapters = query(heading.where(level: 1))
        let current = chapters.rev().find(h => h.location().page() <= here().page())
        let chapter-name = if current != none { current.body } else { [] }
        grid(
          columns: (1fr, 1fr),
          align: (left, right),
          smallcaps[#chapter-name],
          [#counter(page).display()],
        )
        v(-3pt)
        line(length: 100%, stroke: 0.3pt + color-gray.lighten(50%))
      }
    },
    footer: context {
      if counter(page).get().first() > 4 {
        // Footer is empty — page number is in header
      }
    },
  )

  // Typography
  set text(
    font: "Source Sans 3",
    size: 9.5pt,
    lang: "hr",
    region: "HR",
    hyphenate: true,
  )

  // Paragraph settings
  set par(
    justify: true,
    leading: 0.65em,       // Increased from 0.58em for readability
    first-line-indent: 0pt,
  )

  // Heading styles
  show heading.where(level: 1): it => {
    pagebreak(weak: true)
    // Level-1 headings are rendered by chapter-title/appendix-title,
    // so we suppress the visual rendering while keeping TOC/bookmark
    block(height: 0pt, spacing: 0pt, above: 0pt, below: 0pt, clip: true, hide(it))
  }

  show heading.where(level: 2): it => {
    v(8pt)
    text(weight: "bold", fill: color-teal, size: 10.5pt, upper(it.body))
    v(2pt)
    line(length: 100%, stroke: 0.5pt + color-teal.lighten(60%))
    v(4pt)
  }

  show heading.where(level: 3): it => {
    v(8pt)
    text(weight: "bold", fill: color-teal, size: 10pt)[#it.body]
    v(3pt)
  }

  // List styling
  set list(
    indent: 8pt,
    body-indent: 5pt,
    marker: text(fill: color-teal, weight: "bold")[•],
  )

  set enum(
    indent: 8pt,
    body-indent: 5pt,
  )

  // Table defaults
  set table(
    stroke: 0.4pt + rgb("#d1d5db"),
  )

  body
}

// ============================================================================
// Džepni priručnik za spavanje 2026 — Master Document
// Author: Alen Juginović, dr. med. · Harvard Medical School
// ============================================================================

#import "template.typ": *

#show: pocketbook.with(
  title: "Poremećaji spavanja: Džepni priručnik",
  author: "Alen Juginović, dr. med.",
  year: "2026",
)

// --- Front Matter ---
#include "chapters/00-front-matter.typ"

// --- Table of Contents ---
#page(header: none)[
  #v(4pt)
  #text(size: 14pt, weight: "bold", fill: color-teal)[Sadržaj]
  #v(2pt)
  #line(length: 100%, stroke: 1pt + color-teal)
  #v(6pt)

  #set text(size: 9pt)
  #outline(
    title: none,
    indent: 1em,
    depth: 1,
  )
]

// --- Classification of Sleep Disorders ---
#include "chapters/00b-klasifikacija.typ"

// --- At a Glance Summary ---
#include "chapters/00a-pregled.typ"

// --- Diagnostic Algorithm ---
#include "chapters/00d-algoritam.typ"

// ============================
// POREMEĆAJI SPAVANJA (10 poglavlja — poredano po učestalosti i relevantnosti za LOM)
// ============================

#include "chapters/01-nedovoljan-san.typ"
#include "chapters/02-nesanica.typ"
#include "chapters/03-osa.typ"
#include "chapters/04-cirkadijani.typ"
#include "chapters/05-rls-plmd.typ"
#include "chapters/06-nocne-more.typ"
#include "chapters/07-nrem-parasomnije.typ"
#include "chapters/08-bruksizam.typ"
#include "chapters/09-rbd.typ"
#include "chapters/10-hipersomnolencija.typ"

// ============================
// DODACI
// ============================

#include "appendices/A-farmakologija-pregled.typ"
#include "appendices/B-dnevnik-spavanja.typ"
#include "appendices/C-indeks-lijekova.typ"
#include "appendices/D-posebne-populacije.typ"

// --- Back Page ---
#include "chapters/99-back-page.typ"

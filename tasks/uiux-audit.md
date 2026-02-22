# UI/UX & Formatting Audit Report

**Auditor:** Claude Opus 4.6
**Date:** 2026-02-22
**Scope:** All files in `guide/`, `screening/`, `questionnaires/`, and `templates/`

---

## Summary

**Overall Assessment:** The Croatian Sleep Disorders Pocket Guide is an exceptionally well-written, clinically rigorous resource. The content quality is outstanding -- authoritative yet accessible, with excellent clinical vignettes, actionable tables, and clear Croatian medical prose. However, the guide has **significant structural inconsistencies** across chapters that undermine its professional polish and usability as a printed reference.

**Consistency Score: 6.5/10** (content quality: 9.5/10, structural consistency: 4.5/10)

The core problem is that roughly half the chapters follow the template faithfully while the other half use a numbered-section format (e.g., "## 1. Sto je to?" instead of "## Sto je to?"), different MKB-10 header formatting, different "Crvene zastavice" table structures, and different "Ceste zamke" column headers. This creates a jarring reading experience when flipping between chapters.

Additionally, the `scoring-algorithms.md` file is written entirely without Croatian diacritics, which is a major language consistency issue.

---

## 1. Structural Consistency

### Template Structure (from `templates/chapter-template.md`)

The template defines 10 mandatory sections in this order:
1. `# [Broj]. [Naziv poremecaja]` with MKB-10/ICSD-3 blockquote
2. `## Sto je to?`
3. `## Koliko je cesto?`
4. `## Kako prepoznati?`
5. `## Crvene zastavice` (with emoji)
6. `## Probir i dijagnostika`
7. `## Lijecenje u primarnoj zdravstvenoj zastiti`
8. `## Kada uputiti specijalistu?`
9. `## Ceste zamke`
10. `## Kljucne poruke`
11. `## Literatura`

### Chapter-by-Chapter Compliance

| Chapter | Follows Template? | Deviations |
|---------|:-:|---|
| 01-nesanica | YES | Faithful to template. MKB-10 in blockquote. No numbered sections. |
| 02-osa | **NO** | Numbered sections (## 1. Sto je to?, ## 2. Koliko je cesto?, etc.). MKB-10 in bold paragraphs, not blockquote. Red flags in table format instead of list. "Ceste zamke" table uses "Zamka / Ispravni pristup" instead of template's "Pogreska / Ispravni pristup" with emoji. |
| 03-rls-plmd | YES | Follows template well. MKB-10 in blockquote. Correct emoji usage. |
| 04-rbd | **NO** | MKB-10 in bold paragraphs, not blockquote. No numbered sections but "Ceste zamke" table has 3 columns (Zamka / Pogresno razmisljanje / Ispravno razmisljanje) instead of template's 2 columns. |
| 05-nrem-parasomnias | YES | Follows template. MKB-10 in blockquote. |
| 06-narkolepsija | YES | Follows template. MKB-10 in blockquote. |
| 07-idiopatska-hipersomnija | YES | Follows template. MKB-10 in blockquote. |
| 08-cirkadijani-poremecaji | YES | Follows template. MKB-10 in blockquote. |
| 09-bruksizam | **NO** | Numbered sections (## 1. Sto je to?, ## 2. Koliko je cesto?, etc.). MKB-10 in bold paragraphs, not blockquote. "Ceste zamke" table uses "Zamka / Ispravni pristup" without emoji. |
| 10-nedovoljan-san | YES | Follows template. MKB-10 in blockquote. |
| 11-poremecaj-nocnih-mora | YES | Follows template. MKB-10 in blockquote. |
| 12-sred | **NO** | MKB-10 in bold paragraphs, not blockquote. "Ceste zamke" table uses "Zamka / Ispravno razmisljanje" without emoji. |
| 13-centralna-apneja | **NO** | MKB-10 in bold paragraphs, not blockquote. "Ceste zamke" table uses "Zamka / Ispravni pristup" with emoji. |

### Specific Deviations Found

#### A. MKB-10/ICSD-3 Header Format (5 chapters deviate)

**Template format (blockquote):**
```
> **MKB-10:** [sifra] | **ICSD-3:** [klasifikacija]
```

**Chapters using this format:** 01, 03, 05, 06, 07, 08, 10, 11

**Deviant format (bold paragraphs, no blockquote):**
```
**MKB-10:** G47.3 -- Apneja u snu
**ICSD-3:** Opstruktivna apneja u snu (odrasli)
```

**Chapters using deviant format:** 02, 04, 09, 12, 13

**Files and lines:**
- `/guide/02-osa.md` lines 3-4
- `/guide/04-rbd.md` lines 3-4
- `/guide/09-bruksizam.md` lines 3-4
- `/guide/12-sred.md` lines 3-4
- `/guide/13-centralna-apneja.md` lines 3-4

#### B. Numbered Section Headers (2 chapters deviate)

**Template format:** `## Sto je to?`
**Deviant format:** `## 1. Sto je to?` (with section numbers)

**Affected files:**
- `/guide/02-osa.md` -- ALL section headers are numbered (## 1., ## 2., ... ## 10.)
- `/guide/09-bruksizam.md` -- ALL section headers are numbered (## 1., ## 2., ... ## 10.)

#### C. "Ceste zamke" Table Column Headers (4 variations exist)

**Template format:** `| Pogreska | Ispravni pristup |` (with emoji)

| Variation | Chapters |
|---|---|
| `Pogreska / Ispravni pristup` (with emoji) | 01, 03, 05, 06, 07, 08, 10, 11 |
| `Zamka / Ispravni pristup` (NO emoji) | 02, 09 |
| `Zamka / Pogresno razmisljanje / Ispravno razmisljanje` (3 columns, NO emoji) | 04 |
| `Zamka / Ispravno razmisljanje` (NO emoji) | 12 |
| `Zamka / Ispravni pristup` (WITH emoji) | 13 |

#### D. "Crvene zastavice" Section Format (2 variations)

- **List format** (template-compliant): 01, 03, 05, 06, 07, 08, 10, 11
- **Table format** (deviant): 02, 04, 09, 12, 13

The table format in deviant chapters typically adds a third "Akcija" column, which is actually more useful clinically but deviates from the template.

#### E. "Kljucne poruke" Format

- **Numbered list** (template-compliant): 01, 03, 05, 06, 07, 08, 10, 11
- **Bullet points** (deviant): 02, 09, 13

#### F. Footer/Ending Variations

Some chapters have:
- `*Posljednje azuriranje: veljaca 2026.*` -- 02, 08, 09, 10, 13
- Author comments block `<!-- NAPOMENE ZA AUTORA: ... -->` -- 01, 03, 05, 06, 07, 11, 12
- Footnote disclaimers -- 04 (`*Napomena: Poglavlje je namijenjeno...`), 12

**Missing from all chapters:** There is no `14-reference.md` file (referenced in todo.md), meaning there is no master reference list.

---

## 2. Croatian Language Consistency

### 2.1 Diacritics Issues

**CRITICAL ISSUE:** The file `/screening/scoring-algorithms.md` is written **entirely without Croatian diacritics**. Every instance of c, s, z that should be c, s, z, c, d is missing diacritics. This is approximately 250 lines of content that needs diacritics applied.

Examples from `/screening/scoring-algorithms.md`:
- Line 1: `poremecaje` should be `poremecaje` (wait -- actually the entire file uses ASCII: `poremecaje` instead of `poremecaje`, `zastiti` instead of `zastiti`, `lijecnika` instead of `lijecnika`, etc.)
- Line 3: `prirucnik za lijecnike` should be `prirucnik za lijecnike`
- Throughout: `sto`, `nacin`, `klinicka`, `znacajan`, `tezine`, `nesanice`, etc.

All 5 questionnaire files in `/questionnaires/` also lack diacritics:
- `/questionnaires/ess-hr.md` -- no diacritics
- `/questionnaires/isi-hr.md` -- no diacritics
- `/questionnaires/stop-bang-hr.md` -- no diacritics
- `/questionnaires/irls-hr.md` -- no diacritics
- `/questionnaires/rbdsq-hr.md` -- no diacritics

All guide chapters (00-13) and the patient questionnaire (`patient-questions-hr.md`) DO have proper diacritics. The clinical flowchart (`clinical-flowchart.md`) has mixed usage -- the prose has some diacritics but the abbreviation table and some notes use non-diacritical forms.

**Total files missing diacritics: 6 out of 23 content files (26%)**

### 2.2 Terminology Consistency

Generally excellent across the guide chapters. Key terms are used consistently:

| Term | Usage | Consistent? |
|---|---|---|
| Prevalencija | Used in all chapters | YES |
| Probir | "Probir" for screening | YES |
| Upititi specijalistu | "Kada uputiti specijalistu?" | YES |
| LOM | Lijecnik obiteljske medicine | YES |
| PZZ | Primarna zdravstvena zastita | YES |
| Crvene zastavice | Red flags | YES |

**Minor inconsistencies found:**

1. **"Opstruktivna" vs "Opstrukcijska":**
   - Guide chapters consistently use "opstruktivna apneja"
   - `/screening/scoring-algorithms.md` and `/screening/clinical-flowchart.md` use "opstrukcijska apneja u spavanju" (line 24 flowchart, line 79 scoring)
   - Both terms exist in Croatian medical literature but should be unified

2. **"u snu" vs "u spavanju":**
   - Guide chapters: "apneja u snu" (consistent)
   - Screening/questionnaire files: "apneja u spavanju" (inconsistent)
   - Affects: `clinical-flowchart.md` lines 24, 33, 76; `scoring-algorithms.md` lines 50, 79

3. **"Parasomnije" vs "parasomnje":**
   - `/guide/05-nrem-parasomnias.md` line 116: "parasomijama" (typo, missing 'n')
   - `/guide/05-nrem-parasomnias.md` line 131: "novonastaom" (typo, should be "novonastaom" or "novonastalom")

### 2.3 Drug Names (INN Compliance)

Drug names consistently use INN (generic) names throughout. No brand-name-only references detected in the guide chapters. When brand names are mentioned, they appear alongside the generic name (e.g., "Rivotril" alongside "klonazepam"). This is excellent.

### 2.4 Abbreviations

First-use expansion is generally well handled. The introduction (`00-uvod.md`) contains a comprehensive abbreviations table (lines 83-111) which is excellent for reference.

**Issues:**
- COMISA is used extensively in chapters 01 and 02 but is not in the abbreviations table in `00-uvod.md`
- HSAT (Home Sleep Apnea Test) is used in chapter 02 but not in the abbreviations table
- MAD (Mandibular Advancement Device) used in chapter 02 but not in abbreviations table
- SOREMP used in chapters 06, 07 but not in abbreviations table
- FFI (Fatal Familial Insomnia) used in chapter 01 but not in abbreviations table
- CSR (Cheyne-Stokes Respiration) used in chapter 13 but not in abbreviations table

### 2.5 English Words That Should Be Croatian

Generally well handled -- English terms are typically italicized and accompanied by Croatian equivalents. A few instances where English terms are used without Croatian:

- "brain fog" appears without Croatian equivalent in chapters 07 (line 38) and 10 (line 57) -- could add "mozdana magla" or keep English in quotes
- "drowsy driving" appears in chapters 02 (line 77), 07 (line 57), 10 (line 73) -- inconsistent; sometimes parenthetical, sometimes standalone
- "revenge bedtime procrastination" in chapter 10 (line 157) -- no Croatian equivalent offered
- "sleep drunkenness" used in chapters 07 consistently alongside Croatian "inercija spavanja" -- this is fine

---

## 3. Table Formatting

### 3.1 Prevalence Tables

**Mostly consistent.** All chapters use the same basic format:

```
| Populacija | Prevalencija |
|---|---|
```

Some chapters add a third "Komentar" column (02, 09, 13) which is clinically useful but deviates from the 2-column template. This is acceptable variation.

### 3.2 Medication Tables

**Inconsistent column counts:**
- Chapter 01: 4 columns (Lijek, Doza, Trajanje, Napomene)
- Chapter 03: 5 columns (Lijek, Pocetna doza, Raspon doza, Doziranje, Napomene)
- Chapter 05: 3 columns (Lijek, Doza, Napomene) -- template-compliant
- Template: 3 columns (Lijek, Doza, Napomena)

Medication tables should be standardized. The 3-column format from the template is cleanest for print.

### 3.3 "Ceste zamke" Tables

As documented above in section 1C, there are 5 different column header variations. Should be standardized to the template format with emoji.

### 3.4 Referral Tables

**Two formats exist:**
- Template format (3 columns): `| Uputiti | Kamo | Razlog |` -- used by 01, 03, 05, 07, 08, 10
- Deviant format (2 columns): `| Kriterij | Kamo uputiti |` -- used by 02, 09
- 4-column format: `| Uputiti | Kamo | Hitnost | Razlog |` -- used by 06
- 3-column variant: `| Situacija | Kamo uputiti | Hitnost |` -- used by 04, 11, 12, 13

The 3-column format with "Hitnost" (04, 11, 12, 13) is actually the most clinically useful as it communicates urgency.

---

## 4. Information Architecture

### 4.1 Introduction Coverage

The introduction (`00-uvod.md`) lists all 13 chapters in its overview table (lines 65-79). This matches the actual chapter content well. All chapters are accounted for.

**One mismatch:** The overview table lists chapter 5 as `05-nrem-parasomnije` (line 71) but the actual filename is `05-nrem-parasomnias.md` (English plural). This is a trivial filename issue but worth noting for consistency.

### 4.2 Cross-References Between Chapters

**Present and working:**
- Chapter 01 (Nesanica) references OSA/COMISA extensively -- good
- Chapter 02 (OSA) references COMISA and central apnea -- good
- Chapter 04 (RBD) references NREM parasomnias for differential -- good
- Chapter 05 (NREM) has detailed differential table vs RBD vs epilepsy -- excellent
- Chapter 06 (Narkolepsija) references idiopatska hipersomnija -- good
- Chapter 07 (IH) references narkolepsija and nedovoljan san -- good
- Chapter 09 (Bruksizam) references OSA (chapter 2) explicitly: "Vidi poglavlje 2 (OSA)" (line 145) -- good
- Chapter 10 (Nedovoljan san) references circadian disorders and narcolepsija -- good

**Missing cross-references:**
- Chapter 03 (RLS) does not cross-reference chapter 01 (nesanica) despite RLS being a differential for insomnia
- Chapter 08 (Circadian) does not cross-reference chapter 01 (nesanica) despite DSWPD being commonly misdiagnosed as insomnia
- Chapter 11 (Nocne more) does not cross-reference chapter 04 (RBD) explicitly despite the critical differential diagnosis
- Chapter 12 (SRED) does not cross-reference chapter 05 (NREM) despite shared pathophysiology
- Chapter 13 (CSA) does not cross-reference chapter 02 (OSA) despite frequent co-occurrence

### 4.3 Sequential Reading Flow

The chapter ordering is logical and well-considered:
1. Most common (nesanica, OSA) first
2. Movement disorders (RLS) and parasomnias (RBD, NREM) next
3. Hypersomnias (narkolepsija, IH) in the middle
4. Specialized topics (circadian, bruxism, insufficient sleep, nightmares, SRED, CSA) later

This ordering makes clinical sense for a family medicine physician.

---

## 5. Screening Tool Usability

### 5.1 Patient Questionnaire (`patient-questions-hr.md`)

**Strengths:**
- Clear grouping into 5 categories (A-E)
- Simple DA/NE format
- 14 questions is a reasonable length (3-5 minutes)
- Scoring table for physicians is separate and clearly marked
- "Red flag" combinations are highlighted

**Issues:**
- Line 86: "ispitati komorbidet OSA" -- typo, should be "komorbiditet"
- The questionnaire asks about "srčano zatajenje, opioide, moždani udar" in a single question (Q14) -- this bundles 3 very different conditions. Consider splitting or adding a note about which condition applies.
- No instruction for what to do if multiple groups are positive simultaneously (e.g., patient answers YES to Q1 AND Q2 AND Q7)
- The questionnaire does not capture severity or frequency (just yes/no) -- this is appropriate for a screening tool but should be noted

### 5.2 Clinical Flowcharts (`clinical-flowchart.md`)

**Strengths:**
- Three well-designed Mermaid flowcharts covering the three main presentations: "Ne mogu spavati", "Stalno sam umoran/a", "Nesto se dogada dok spavam"
- Detailed explanatory notes accompany each flowchart
- All paths lead to actionable outcomes
- Red flag "HITNO" labels are appropriate

**Issues:**
- Mermaid diagrams require a compatible renderer (GitHub, Obsidian, VS Code) -- if printed as raw Markdown, diagrams will appear as code blocks. This is noted in the header but may be problematic for the intended audience (family doctors who may receive a PDF).
- Line 119: "idiopatske hipersomnencije" -- typo, should be "hipersomnolencije" or "hipersomnija"
- The flowcharts do not cover bruxism (chapter 9), SRED (chapter 12), or nightmare disorder (chapter 11) in the main pathways -- bruxism and SRED appear only in flowchart 3 as secondary branches. This is clinically acceptable since these are less common presentations.
- The flowcharts reference "PTSP" which is consistent with Croatian abbreviation, but the abbreviation is not defined in the flowchart legend (lines 33 shows it is defined).

### 5.3 Scoring Algorithms (`scoring-algorithms.md`)

**Strengths:**
- Covers all 5 validated questionnaires
- Clear scoring tables with cutoffs
- Practical "which questionnaire for which complaint" summary table
- Time estimates for administration
- Documentation guidance for medical records

**Critical Issue:**
- **NO DIACRITICS** throughout the entire file (see section 2.1 above). This is the most significant quality issue in the screening materials.

**Minor Issues:**
- Line 9: "sadrzi" should be "sadrzi" (example of missing diacritics)
- ISI clinical significance cutoff is listed as >=15 (line 117) but the chapter 01 text says ISI >=15 is "umjerena nesanica -- indicirana intervencija" while some passages use ISI >=10 as screening cutoff -- this dual threshold should be clarified
- ESS interpretation table (lines 34-40) uses different category breaks than the one in chapter 01: scoring-algorithms uses 0-5/6-10/11-12/13-15/16-24 while the ESS questionnaire file uses 0-7/8-9/10-15/16-24. The breakpoints differ and should be harmonized.

### 5.4 Questionnaire Administration Instructions

Each questionnaire file in `/questionnaires/` has:
- Original reference citation -- YES, all 5
- Translation status note -- YES, all 5
- Instructions for patient -- YES, all 5
- Scoring rules -- YES, all 5
- Interpretation table -- YES, all 5
- Clinical notes for physician -- YES, all 5
- Copyright notice -- YES, all 5

This is thorough and well-done. The main issue is the missing diacritics across all 5 files.

---

## 6. Readability & Print-Readiness

### 6.1 Chapter Length (estimated word counts based on file sizes)

| Chapter | File Size | Est. Words | Assessment |
|---------|-----------|-----------|------------|
| 00-uvod | 6.8 KB | ~900 | Appropriate for intro |
| 01-nesanica | 14.8 KB | ~2,000 | Good -- within template range |
| 02-osa | 16.9 KB | ~2,300 | Good -- slightly long but justified by topic importance |
| 03-rls-plmd | 24.0 KB | ~3,200 | Long -- covers two disorders, justified |
| 04-rbd | 19.6 KB | ~2,600 | Good -- detailed but warranted for neurodegenerative implications |
| 05-nrem | 21.5 KB | ~2,900 | Good -- covers three sub-disorders |
| 06-narkolepsija | 23.5 KB | ~3,200 | Long -- justified by diagnostic complexity and delay |
| 07-idiopatska | 19.9 KB | ~2,600 | Good |
| 08-cirkadijani | 23.1 KB | ~3,100 | Long -- covers four sub-disorders |
| 09-bruksizam | 15.3 KB | ~2,000 | Good |
| 10-nedovoljan-san | 16.0 KB | ~2,100 | Good |
| 11-nocne-more | 16.8 KB | ~2,200 | Good |
| 12-sred | 11.1 KB | ~1,500 | Appropriate -- simpler topic |
| 13-centralna-apneja | 11.8 KB | ~1,600 | Appropriate -- simpler topic |

**Assessment:** Most chapters fall within the template's recommended 1500-2500 word range. Chapters 03, 06, and 08 are longer (~3000-3200 words) but this is justified because they cover multiple sub-disorders. No chapters are excessively long.

### 6.2 Visual Hierarchy

**Strengths:**
- Excellent use of bold for key terms and pathognomonic features
- Good use of blockquotes for important warnings and clinical tips
- Tables are used effectively for structured comparisons
- Bullet points break up text well
- Clinical vignettes in chapters 06 (narkolepsija) are particularly effective

**Issues:**
- Some chapters (notably 03-rls-plmd) have very long sections without visual breaks. The "Farmakoterapija" section in chapter 03 is particularly dense.
- The differential diagnosis tables in chapters 04 and 05 are excellent but very wide (5+ columns) which will cause problems in narrow print formats.
- The IRT protocol in chapter 11 (lines 126-143) is formatted as a nested blockquote which may render oddly in some Markdown processors.

### 6.3 Walls of Text

Most chapters handle this well with tables and bullets. A few sections could benefit from additional formatting:
- `/guide/03-rls-plmd.md` lines 7-11: The opening paragraph for PLMD is a single very long paragraph (~150 words). Consider breaking into 2 paragraphs.
- `/guide/08-cirkadijani-poremecaji.md` lines 7-17: Long opening explanation could use a break.

### 6.4 Print-Readiness

**Concerns for print/PDF:**
1. Mermaid diagrams in `clinical-flowchart.md` will not render in PDF unless pre-processed
2. Wide tables (5+ columns) in differential diagnosis sections will overflow on A5 booklet format
3. Checkbox characters (&#9744;) in STOP-BANG and RBDSQ questionnaires may not render in all PDF generators
4. The `<!-- NAPOMENE ZA AUTORA -->` HTML comments should be stripped before publication
5. Missing `14-reference.md` file means no master bibliography exists

---

## 7. Cross-Referencing

### Present Cross-References
- Chapter 09 -> Chapter 02: Explicit ("Vidi poglavlje 2 (OSA)")
- Chapter 04 includes differential table vs NREM and epilepsy
- Chapter 05 includes differential table vs RBD and epilepsy
- Chapter 06 includes comparison table vs IH
- Chapter 07 includes comparison table vs narkolepsija tip 2 vs nedovoljan san
- COMISA concept links chapters 01 and 02

### Missing Cross-References

| From | To | Why |
|------|----|----|
| Ch. 03 (RLS) | Ch. 01 (Nesanica) | RLS is a key differential for insomnia at onset |
| Ch. 08 (Cirkadijani) | Ch. 01 (Nesanica) | DSWPD commonly misdiagnosed as insomnia |
| Ch. 11 (Nocne more) | Ch. 04 (RBD) | Critical differential, should say "vidi poglavlje 4" |
| Ch. 11 (Nocne more) | Ch. 05 (NREM) | Nocni strahovi differential, should cross-ref |
| Ch. 12 (SRED) | Ch. 05 (NREM) | SRED shares NREM parasomnia mechanism |
| Ch. 12 (SRED) | Ch. 01 (Nesanica) | Zolpidem connection -- SRED from insomnia treatment |
| Ch. 13 (CSA) | Ch. 02 (OSA) | OSA/CSA differential and co-occurrence |
| Ch. 10 (Nedovoljan san) | Ch. 06 (Narkolepsija) | MSLT false positive warning cross-ref |
| Ch. 10 (Nedovoljan san) | Ch. 07 (IH) | Key differential |

---

## 8. Additional Issues Found

### 8.1 Typos and Errors

| File | Line | Issue |
|------|------|-------|
| `/guide/05-nrem-parasomnias.md` | 64 | "otvorne oči" should be "otvorene oči" |
| `/guide/05-nrem-parasomnias.md` | 116 | "parasomijama" should be "parasomnjama" |
| `/guide/05-nrem-parasomnias.md` | 131 | "novonastaom" should be "novonastalim" |
| `/guide/05-nrem-parasomnias.md` | 181 | "provociriajućih" should be "provocirajućih" |
| `/guide/07-idiopatska-hipersomnija.md` | 34 | "dezorjentacije" should be "dezorijentacije" |
| `/guide/07-idiopatska-hipersomnija.md` | 194 | "dezorjentirani" should be "dezorijentirani" |
| `/guide/07-idiopatska-hipersomnija.md` | 200 | "dezorjentiran" should be "dezorijentiran" |
| `/screening/patient-questions-hr.md` | 86 | "komorbidet" should be "komorbiditet" |
| `/screening/clinical-flowchart.md` | 119 | "hipersomnencije" should be "hipersomnolencije" |
| `/guide/01-nesanica.md` | 135 | "Hidroksizinaᵈ" -- the superscript "d" appears to be a leftover annotation |
| `/guide/02-osa.md` | 57 | "refrakteriom" should be "refraktornom" |

### 8.2 Missing Content

- **No `14-reference.md`** -- The todo.md references this file for a master reference list. It does not exist.
- **No chapter numbering in filename for 00-uvod** -- This is consistent (00- prefix for introduction) but worth noting.
- The `export/` directory is empty -- no export templates or PDF generation scripts exist.

### 8.3 RBDSQ Scoring Discrepancy

- The RBDSQ file (`/questionnaires/rbdsq-hr.md`) states max score is 10 (line 89)
- The RBD chapter (`/guide/04-rbd.md`) states RBDSQ has "13 da/ne pitanja" with cutoff >= 5 (line 135)
- The scoring-algorithms file states "13 da/ne pitanja (boduje se 10 stavki)" with range 0-13 (line 173)
- These are not contradictory but could confuse a reader: the questionnaire has 13 items but max SCORE is 10. This should be clarified consistently everywhere.

---

## Priority Fix List

1. **[CRITICAL] Add diacritics to all 6 files missing them** -- `/screening/scoring-algorithms.md` and all 5 files in `/questionnaires/`. This is the single most impactful fix for professional credibility.

2. **[HIGH] Standardize MKB-10/ICSD-3 header format** across all chapters to use the blockquote format from the template. Affects: chapters 02, 04, 09, 12, 13.

3. **[HIGH] Remove numbered section headers** from chapters 02 and 09 to match the template's unnumbered format.

4. **[HIGH] Standardize "Ceste zamke" table format** across all chapters to use the template's 2-column format with emoji headers. Affects: chapters 02, 04, 09, 12, 13.

5. **[MEDIUM] Standardize "Kljucne poruke" format** -- convert bullet points in chapters 02, 09, 13 to numbered lists per template.

6. **[MEDIUM] Harmonize terminology** -- unify "opstruktivna" vs "opstrukcijska" and "u snu" vs "u spavanju" across screening/questionnaire files to match guide chapters.

7. **[MEDIUM] Add missing abbreviations** to the abbreviations table in `00-uvod.md`: COMISA, HSAT, MAD, SOREMP, CSR, FFI.

8. **[MEDIUM] Add cross-references** between related chapters as listed in section 7 above. Use format: "vidi poglavlje X".

9. **[MEDIUM] Fix all typos** listed in section 8.1.

10. **[LOW] Harmonize ESS interpretation breakpoints** between `scoring-algorithms.md` and `questionnaires/ess-hr.md`.

11. **[LOW] Clarify RBDSQ scoring** consistently (13 questions, max score 10) in all places it is referenced.

12. **[LOW] Standardize "Crvene zastavice" format** -- either all list or all table. The table format with "Akcija" column is more useful; consider updating the template to use this format.

13. **[LOW] Create `14-reference.md`** master bibliography or remove from todo.md.

14. **[LOW] Address print-readiness** -- convert Mermaid diagrams to static images, test wide tables in target format, strip HTML comments.

---

## Recommendations for Format Decision

Based on the content structure, here is an assessment of each format:

### PDF Booklet (A5 or B5) -- RECOMMENDED PRIMARY FORMAT
- **Pros:** The chapter structure, table-based layout, and sequential organization are ideal for a printed booklet that a doctor keeps on their desk or in a drawer. The ~1500-2500 word chapters translate to ~3-5 pages each, making a booklet of approximately 80-100 pages -- manageable for a pocket reference.
- **Cons:** Wide differential diagnosis tables (5+ columns) will need reformatting for narrow pages. Mermaid diagrams need pre-rendering. The 14 guide chapters + screening tools + 5 questionnaires would make a substantial but not unwieldy booklet.
- **Verdict:** Best format. Design it as an A5 spiral-bound or saddle-stitched booklet with tabs for each chapter.

### Web Application / Progressive Web App -- RECOMMENDED SECONDARY FORMAT
- **Pros:** Enables search, hyperlinked cross-references, interactive flowcharts, and questionnaire auto-scoring. The modular chapter structure translates perfectly to web pages. Could integrate the scoring algorithms directly.
- **Cons:** Requires development effort. Croatian doctors may not adopt a new app.
- **Verdict:** Excellent complement to the booklet. The clinical flowcharts particularly benefit from interactivity.

### Standalone PDF (A4) -- ACCEPTABLE
- **Pros:** Easy to distribute via email. Most doctors have PDF readers.
- **Cons:** Too large to read on a phone. Not a "pocket" guide. Tables render well on A4 but the document becomes 100+ pages.
- **Verdict:** Good for distribution but not optimal for daily clinical use.

### Mobile App -- OPTIONAL ENHANCEMENT
- **Pros:** Always available. Could include questionnaire scoring, medication dosing calculators, and referral letter templates.
- **Cons:** Significant development cost. May not be necessary if web app exists.
- **Verdict:** Only worthwhile if there is budget and developer capacity.

### Final Recommendation
Prioritize a **professionally designed A5 PDF booklet** as the primary deliverable, with a **simple web version** (even static Markdown rendered via GitHub Pages or similar) as the secondary format. The content is already organized perfectly for both formats -- it just needs the structural consistency fixes outlined above.

---

*Report generated 2026-02-22. All file paths are relative to `/Users/alen/Documents/Claude_Code_Projects/croatian-sleep-guide/`.*

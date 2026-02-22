# Croatian Sleep Guide — TODO

## Step 1: Foundation
- [x] Create project scaffolding
- [x] Write README.md
- [x] Write chapter template (templates/chapter-template.md)
- [x] Write introduction (guide/00-uvod.md)
- [ ] **REVIEW CHECKPOINT:** Alen reviews template + uvod for tone/terminology

## Step 2: Brief Chapters
- [x] Write insomnia chapter (guide/01-nesanica.md)
- [x] Write OSA chapter (guide/02-osa.md)
- [ ] **REVIEW CHECKPOINT:** Alen reviews for depth/style calibration

## Step 3: High-Impact Detailed Chapters

### Batch A (highest clinical impact)
- [x] RLS / PLMD (guide/03-rls-plmd.md)
- [x] RBD (guide/04-rbd.md)
- [x] Narcolepsy (guide/06-narkolepsija.md)
- [ ] **REVIEW CHECKPOINT:** Alen reviews Batch A

### Batch B
- [x] NREM Parasomnias (guide/05-nrem-parasomnias.md)
- [x] Idiopathic Hypersomnia (guide/07-idiopatska-hipersomnija.md)
- [x] Circadian Rhythm Disorders (guide/08-cirkadijani-poremecaji.md)
- [ ] **REVIEW CHECKPOINT:** Alen reviews Batch B

### Batch C
- [x] Sleep Bruxism (guide/09-bruksizam.md)
- [x] Insufficient Sleep Syndrome (guide/10-nedovoljan-san.md)
- [x] Nightmare Disorder (guide/11-poremecaj-nocnih-mora.md)
- [x] Sleep-Related Eating Disorder (guide/12-sred.md)
- [x] Central Sleep Apnea (guide/13-centralna-apneja.md)
- [ ] **REVIEW CHECKPOINT:** Alen reviews Batch C

## Step 4: Screening Tool
- [x] Patient screening questionnaire (screening/patient-questions-hr.md)
- [x] Clinical decision flowcharts × 3 (screening/clinical-flowchart.md)
- [x] Scoring algorithms (screening/scoring-algorithms.md)

## Step 5: Validated Questionnaires
- [x] ESS-HR (questionnaires/ess-hr.md)
- [x] STOP-BANG-HR (questionnaires/stop-bang-hr.md)
- [x] IRLS-HR (questionnaires/irls-hr.md)
- [x] ISI-HR (questionnaires/isi-hr.md)
- [x] RBDSQ-HR (questionnaires/rbdsq-hr.md)

## Step 6: QA & References
- [x] Cross-check against ICSD-3, AASM, ESRS (scientific audit completed)
- [x] Verify HALMED drug availability
- [x] Master reference list (guide/14-reference.md)
- [x] Terminology consistency pass
- [x] Full scientific audit (tasks/scientific-audit.md)
- [x] Full UI/UX audit (tasks/uiux-audit.md)
- [x] Apply scientific audit corrections (2 critical, 4 moderate, 6 minor)
- [x] Apply UI/UX audit corrections (diacritics, structural standardization, typos, cross-refs)
- [ ] **REVIEW CHECKPOINT:** Alen reviews final QA'd version

## Step 7: Calibration & Trimming (2026-02-22)
- [x] Add "Brzi pregled" boxes to all 13 chapters (Prepoznaj/Učini/Uputi)
- [x] Phase 1: Clinical usability review (all chapters + screening tools)
- [x] Fix 3 must-fix errors (RBDSQ range 0-10, STOP-BANG anatomy, ISI flagged for review)
- [x] Phase 2: Content trimming (~5,700 words cut across 12 chapters, Ch12 SRED = model)
- [x] Phase 3: Practical additions
  - [x] Sleep diary template (screening/dnevnik-spavanja.md)
  - [x] Referral letter template with 3 examples (screening/predlozak-uputnice.md)
  - [x] IRLS questionnaire layout consolidation (10 tables → 1 compact table)
  - [x] Patient age/DOB field added to screening questionnaire
- [ ] **REVIEW CHECKPOINT:** Alen reviews trimmed + enhanced version

## Step 8: Export (pending)
- [ ] Pre-render Mermaid flowcharts for print
- [ ] Generate A5 PDF booklet
- [ ] Final formatting pass

---

## Audit Correction Summary (applied 2026-02-22)

### Scientific Fixes Applied
- **CRITICAL:** RLS ferritin threshold updated to AASM 2024 two-tier approach (ch03 + irls-hr.md)
- **CRITICAL:** Dopamine agonists now framed as "conditional recommendation AGAINST" per AASM 2024 (ch03)
- **MODERATE:** ISI clinically significant change standardized to ≥8 bodova across all files (ch01, scoring-algorithms, isi-hr)
- **MODERATE:** ESS cutoff standardized to ≥10 for screening with ≥11 Johns note (scoring-algorithms, ess-hr)
- **MODERATE:** Prazosin balanced evidence added — Raskind 2018 NEJM negative study now in main text (ch11)
- **MODERATE:** 2024 AASM RLS guideline reference added (ch03)
- **MINOR:** ICSD-3 → ICSD-3-TR in abbreviation table (ch00)
- **MINOR:** Solriamfetol explicitly "nije dostupan u Hrvatskoj" (ch06)

### Structural/Formatting Fixes Applied
- MKB-10/ICSD-3 header standardized to blockquote format (ch02, 04, 09, 12, 13)
- Numbered section headers removed (ch02, 09)
- "Česte zamke" table format standardized with emoji (ch02, 04, 09, 12, 13)
- "Ključne poruke" converted to numbered lists (ch02, 09, 13)

### Linguistic Fixes Applied
- **Croatian diacritics added** to 6 files: scoring-algorithms.md, ess-hr.md, stop-bang-hr.md, irls-hr.md, isi-hr.md, rbdsq-hr.md
- **Terminology unified:** "opstruktivna apneja u snu" (not "opstrukcijska u spavanju")
- **6 missing abbreviations added** to 00-uvod.md (COMISA, CSR, FFI, HSAT, MAD, SOREMP)
- **11 typos fixed** across ch05, ch07, patient-questions, clinical-flowchart
- **3 cross-references added** (ch05→ch04, ch08→ch01, ch10→ch06/ch07)

---

## Data Source Notes
- Somnia app clinical data: `/Users/alen/Documents/Claude_Code_Projects/Sleep-Wellness/sleep-clinic-app/src/data/`
  - `disorders.json` (3176 lines, 32 disorders)
  - `questionnaire.json` (1516 lines, scoring algorithm)
  - `medications.json` (722 lines)
- Used as fact-checked clinical foundation, NOT translated verbatim
- All content rewritten for PCP audience in Croatian

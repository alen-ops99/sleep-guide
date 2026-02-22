# Scientific Audit Report: Croatian Sleep Disorders Pocket Guide

**Auditor:** Claude Opus 4.6, instructed by Alen Juginovic, MD (Harvard Medical School)
**Date:** 2026-02-22
**Scope:** All 14 guide files (00-13), 3 screening files, 5 questionnaire files
**Standards:** ICSD-3-TR (2023), AASM 2021-2025 guidelines, ESRS position papers, IRLSSG 2024 guidelines

---

## Summary

**Overall assessment:** The guide is of exceptionally high clinical quality. It is thorough, evidence-based, well-structured, and appropriately adapted for the Croatian primary care context. The vast majority of diagnostic criteria, prevalence figures, medication doses, and clinical recommendations are correct per current guidelines.

**Issues found: 12 total -- 2 critical, 4 moderate, 6 minor**

- **Critical (2):** Issues that could affect patient safety or represent significant clinical inaccuracies
- **Moderate (4):** Items that should be updated to reflect the latest evidence but do not pose immediate danger
- **Minor (6):** Nitpicks, inconsistencies, or opportunities for improvement

---

## Chapter-by-Chapter Findings

### 00. Uvod (Introduction)

- Correct: ICSD-3, AASM, ESRS cited as source guidelines
- Correct: Abbreviation table is comprehensive and accurate
- Correct: RLS prevalence 5-10%, narcolepsy diagnostic delay 8-15 years
- Correct: Prevalence figures in overview table are appropriate
- Note: ICSD-3 is listed as "3rd edition" in the abbreviations, but the text revision (ICSD-3-TR, 2023) is what is actually used throughout the guide. The abbreviation table should specify "ICSD-3-TR" for consistency.

**Verdict: No errors. 1 minor inconsistency in abbreviation table (ICSD-3 vs ICSD-3-TR).**

---

### 01. Nesanica (Chronic Insomnia)

- Correct: ICSD-3-TR definition of chronic insomnia disorder (>=3 nights/week, >=3 months, daytime dysfunction)
- Correct: Prevalence figures (10-15% chronic, 30-35% symptoms) align with published epidemiological data
- Correct: CBT-I as first-line therapy -- fully consistent with AASM 2021, ACP 2016, ESRS 2017, NICE
- Correct: Medication doses for zolpidem (5-10 mg, 5 mg for women), melatonin (2 mg), trazodone (25-100 mg), hydroxyzine (25-50 mg)
- Correct: Eszopiclone, suvorexant, lemborexant, daridorexant, ramelteon, low-dose doxepin listed as NOT available in Croatia
- Correct: COMISA prevalence 30-50%
- Correct: Beers criteria warning for benzodiazepines and Z-drugs in elderly

**ISI Cutoffs:**
- Correct: 0-7 no clinically significant insomnia, 8-14 subthreshold, 15-21 moderate, 22-28 severe (per Bastien 2001)
- The guide states "clinically significant response = drop of >=6 points; remission = ISI <8"

> **MODERATE ISSUE #1:** The ISI clinically significant change threshold is stated as >=6 points. Per Morin et al. 2011, the clinically significant change score associated with "moderate improvement" is approximately 8.4 points (95% CI: 7.1-9.4). The commonly cited threshold in clinical practice is >=7-8 points, not 6. The scoring-algorithms.md file correctly states ">=8 bodova" in the ISI section, but the chapter text says ">=6 bodova." These should be reconciled. Recommend changing to >=7 points for consistency with the most widely used threshold, or >=8 per Morin 2011.

- Correct: References are appropriate and from reputable sources (Riemann 2017, Qaseem 2016, Sateia 2017, Morin 2009, AASM ICSD-3-TR 2023, Edinger 2021)

**Verdict: 1 moderate issue (ISI change threshold). Otherwise excellent.**

---

### 02. OSA (Obstructive Sleep Apnea)

- Correct: AHI classification (5-14 mild, 15-29 moderate, >=30 severe)
- Correct: Prevalence figures (9-38% men, 4-28% women, based on Heinzer 2015 / Benjafield 2019)
- Correct: 80-90% underdiagnosed figure
- Correct: Emphasis on atypical presentation in women -- clinically critical point
- Correct: CPAP adherence target >=4h/night, >=70% nights
- Correct: Weight loss of 10% can reduce AHI by 26-50%
- Correct: MAD as alternative for mild-moderate OSA or CPAP-intolerant patients

**STOP-BANG:**
- Correct: Cutoff >=3 for intermediate risk, >=5 for high risk
- Correct: Note about lower sensitivity in women

> **MINOR ISSUE #1:** The STOP-BANG "B" criterion in the guide uses BMI >35 kg/m2. The original STOP-BANG questionnaire uses BMI >35. This is correct. However, the chapter text (section 5, table) states "BMI >35 kg/m2" while the screening algorithm flowchart correctly uses "BMI >35". Consistent -- no actual error here.

**ESS Cutoff:**
- The guide states "Normalno: 0-10; Patoloski: >=11; Teska pospanost: >=16"
- This is correct per the original Johns 1991 paper. The standard clinical cutoff for excessive daytime sleepiness is ESS >=11 (not >=10).
- However, several places in the guide (screening-algorithms, chapter 6 narcolepsy, chapter 7 IH) use ESS >=10 as the clinical threshold.

> **MODERATE ISSUE #2:** There is an inconsistency in ESS cutoff across the guide. Chapter 02 correctly states >=11 as pathological, but the ESS questionnaire file (ess-hr.md) states ">=10 upucuje na klinicki znacajnu pretjeranu dnevnu pospanost" as the cutoff, and the scoring-algorithms.md file uses ">=10" as the clinically significant threshold, while categorizing 0-5 as normal, 6-10 as borderline, 11-12 as mild EDS. The original ESS validation defines 0-10 as normal and >=11 as EDS. The cutoff discrepancy (>=10 vs >=11) should be standardized. The more commonly cited clinical screening threshold in recent literature is >=10 (used by AASM for screening purposes), but the original Johns classification uses >=11. **Recommendation:** Pick one and use it consistently throughout. Since the guide is for primary care screening, >=10 is reasonable and arguably more conservative (catches more cases), but it should be consistent. Currently the guide uses both interchangeably, which creates confusion.

- Correct: Croatian sleep centers listed (KBC Zagreb/Jordanovac, KBC Split, KBC Rijeka, KBC Osijek)
- Correct: References are high-quality (Benjafield 2019, Heinzer 2015, Chung 2008, Peppard 2013, Kapur 2017, Patil 2019)

**Verdict: 1 moderate issue (ESS cutoff inconsistency across guide). Otherwise excellent.**

---

### 03. RLS/PLMD

- Correct: Four essential IRLSSG diagnostic criteria accurately stated
- Correct: RLS prevalence 5-10%, 1.5-2x more common in women
- Correct: PLMD requires PSG (PLMS index >=15/hr in adults)
- Correct: PLMS definition (0.5-10 seconds, series of >=4, interval 5-90 seconds)

**Ferritin Threshold:**
- The guide states: "treat if feritin <75 ng/mL (some recommend <100 ng/mL)"
- The IRLS questionnaire file states: "feritin <75 mcg/L zahtijeva nadomjesnu terapiju zeljezom... Ciljna vrijednost feritina za RLS: >75 mikrog/L, idealno >100"

> **CRITICAL ISSUE #1 (UPDATED GUIDELINES):** The 2024 AASM Clinical Practice Guideline for RLS treatment (published October 2024 in JCSM) has updated the ferritin thresholds. The new recommendation is:
> - **Ferritin <75 ng/mL:** Either oral or IV iron supplementation
> - **Ferritin 75-100 ng/mL:** IV iron only (oral iron is poorly absorbed at these levels)
> - **Target: ferritin >=100 ng/mL** (not just >=75)
>
> The guide's statement of "treat if <75, some say <100" is now outdated. The 2024 AASM guideline makes a strong recommendation for IV iron when ferritin is <100 (with oral acceptable only if <75). The guide should be updated to reflect the new two-tier approach and the stronger emphasis on >=100 as the target.

**Gabapentin vs Dopamine Agonists:**

> **CRITICAL ISSUE #2 (UPDATED GUIDELINES):** The guide correctly positions alpha-2-delta ligands (gabapentin, pregabalin) as the preferred first-line pharmacotherapy over dopamine agonists. This is excellent and forward-looking. HOWEVER, the 2024 AASM guideline has gone further than the guide reflects:
> - The 2024 AASM now gives a **conditional recommendation AGAINST** the routine use of dopamine agonists (pramipexole, ropinirole, rotigotine, carbidopa-levodopa) for RLS.
> - This is a "paradigm shift" -- dopamine agonists are no longer just "second-line," they are now formally recommended against unless the patient specifically prefers short-term symptom relief over long-term augmentation risk.
> - The guide currently presents dopamine agonists as a reasonable "second line" with caution. It should be updated to reflect the stronger 2024 stance: conditional recommendation against, not merely "second line with caution."
>
> Additionally, gabapentin enacarbil received a strong recommendation in the 2024 guidelines but is correctly noted as unavailable in Croatia.

- Correct: Augmentation description is clinically accurate and well-presented (30-50%, earlier onset, spread to arms, dose escalation)
- Correct: Medications listed as available in Croatia match HALMED (gabapentin, pregabalin, pramipexole, ropinirole, ferrous sulfate)
- Correct: Gabapentin enacarbil and rotigotine patch listed as NOT available in Croatia
- Correct: List of medications that worsen RLS (antihistamines, SSRIs/SNRIs, antipsychotics, antiemetics, mirtazapine)
- Correct: Bupropion highlighted as safer antidepressant for RLS patients

**Verdict: 2 critical issues (ferritin threshold update per 2024 AASM; dopamine agonist recommendation update per 2024 AASM). The guide's existing positioning was ahead of its time but now needs updating to reflect the even stronger 2024 evidence.**

---

### 04. RBD (REM Sleep Behavior Disorder)

- Correct: ICSD-3 diagnostic criteria for RBD accurately stated (all 4 criteria)
- Correct: RBDSQ cutoff >=5, sensitivity 96%, specificity 56%
- Correct: First-line treatment melatonin (3-12 mg), second-line clonazepam (0.25-2 mg)
- Correct: Safety measures as priority #1
- Correct: Differential diagnosis table (RBD vs NREM parasomnias vs nocturnal epilepsy) is clinically excellent
- Correct: Medications that cause/worsen RBD (SSRIs, SNRIs, TCAs, beta-blockers, MAO-Is)

**Phenoconversion Rate:**
- The guide states: "More than 80% of patients with idiopathic RBD will develop PD, DLB, or MSA within 10-15 years. Cumulative phenoconversion risk after 14 years exceeds 90%."

> **MINOR ISSUE #2:** The ">80% within 10-15 years" and ">90% after 14 years" figures are consistent with the seminal Schenck/Boeve 2013 data (81% in 16-year follow-up) and Postuma 2019 multicenter study (73.5% at 12 years, estimated >90% at 14 years with extended modeling). Recent 2024 prospective data from the Chinese cohort (published in npj Parkinson's Disease 2024) shows conversion rates of 16.3% at 3 years, 27.6% at 5 years, and 57.2% at 10 years -- slightly lower than the Western-dominated cohorts. However, the guide's figures remain within the accepted range cited by major references and are appropriate for clinical counseling. The ">80%" figure is defensible based on the Schenck 2013 and Postuma 2019 data with long follow-up. **No change required**, but consider adding a nuance that rates may vary by cohort and follow-up duration.

- Correct: Prevalence figures (1-2% general population, 5-13% subclinical in >60, 30-60% PD, 70-90% DLB, 80-95% MSA)
- Correct: Clonazepam contraindications (OSA, elderly, liver insufficiency)
- Correct: Referral pathways appropriate for Croatian system

**Verdict: No errors. 1 minor note about phenoconversion rate nuance.**

---

### 05. NREM Parasomnias

- Correct: Three disorders (somnambulism, sleep terrors, confusional arousals) described as spectrum of same mechanism
- Correct: Prevalence figures (somnambulism 10-17% children/1-4% adults, sleep terrors 1-6% children/<1% adults)
- Correct: First third of night timing (N3 predominance)
- Correct: Differential diagnosis vs RBD vs nocturnal epilepsy (SHE) -- excellent clinical table
- Correct: Updated nomenclature for nocturnal frontal lobe epilepsy to "sleep-related hypermotor epilepsy" (SHE) per Tinuper 2016
- Correct: Zolpidem identified as common pharmacological trigger in adults
- Correct: Scheduled awakenings technique described
- Correct: Clonazepam 0.25-2 mg as first-line pharmacotherapy for severe cases
- Correct: Family history positive in up to 60% of somnambulists
- Correct: PSG not needed for typical childhood NREM parasomnias
- Correct: ICD-10 codes (F51.3, F51.4, G47.51)

**Verdict: No errors. Excellent chapter.**

---

### 06. Narkolepsija (Narcolepsy)

- Correct: ICSD-3 diagnostic criteria for type 1 and type 2 accurately stated
- Correct: MSLT criteria: mean sleep latency <=8 minutes + >=2 SOREMPs
- Correct: SOREMP on preceding night PSG counts as one of the two required SOREMPs
- Correct: Hypocretin-1 in CSF <=110 pg/mL (or 1/3 of normal) diagnostic for type 1
- Correct: Prevalence 0.02-0.05%
- Correct: Two age peaks (around 15 and 35 years)
- Correct: Diagnostic delay 8-15 years
- Correct: Pentad description with note that complete pentad in only 10-15%
- Correct: Cataplexy as pathognomonic for type 1, partial cataplexy more common than complete
- Correct: Comparison table (narcolepsy type 1 vs type 2 vs idiopathic hypersomnia) is clinically excellent
- Correct: Modafinil listed as available in Croatia; sodium oxybate noted as strictly regulated
- Correct: HLA-DQB1*06:02 association >98% for type 1, 40-50% for type 2

> **MINOR ISSUE #3:** The guide mentions pitolisant and solriamfetol in the medication table but does not clearly state their availability in Croatia. It says solriamfetol is "ne dostupan u svim zemljama" but does not explicitly state whether it is available in Croatia. The IH chapter (07) explicitly states solriamfetol is NOT available in Croatia, but chapter 06 should state this explicitly as well for clarity.

**Verdict: No errors. 1 minor clarity issue on drug availability.**

---

### 07. Idiopatska hipersomnija (Idiopathic Hypersomnia)

- Correct: ICSD-3-TR criteria (EDS >=3 months, MSLT latency <=8 min with <2 SOREMPs, OR 24h total sleep >=11h)
- Correct: Prevalence ~0.005-0.01%
- Correct: Cardinal features well described (sleep inertia/sleep drunkenness, prolonged nocturnal sleep, unrefreshing naps)
- Correct: Comparison table (IH vs narcolepsy type 2 vs insufficient sleep syndrome) is excellent
- Correct: Xywav (lower-sodium oxybate) noted as FDA-approved for IH (2021) but NOT available in Croatia
- Correct: Solriamfetol explicitly stated as NOT available in Croatia
- Correct: Modafinil available in Croatia with special prescription

**Verdict: No errors. Excellent chapter.**

---

### 08. Cirkadijani poremecaji (Circadian Rhythm Disorders)

- Correct: DSWPD prevalence 1-3% general, 7-16% adolescents
- Correct: Melatonin dosing for DSWPD (0.5-3 mg, 5-7 hours before DLMO, i.e., ~18:00-19:00) -- this is excellent and reflects current chronobiological evidence (Burgess 2010)
- Correct: Common error highlighted (melatonin 5-10 mg at midnight as hypnotic is wrong for DSWPD)
- Correct: Light therapy 10,000 lux x 30 min immediately upon waking
- Correct: Shift work disorder prevalence 10-40%
- Correct: IARC classification of night shift work as "probably carcinogenic" (Group 2A, 2019)
- Correct: Non-24 described in context of totally blind individuals
- Correct: Clockwise rotation of shifts better tolerated
- Correct: Modafinil for severe shift work disorder (specialist prescription)
- Correct: Referral to specialized center for refractory DSWPD or Non-24

**Verdict: No errors. Exceptionally well-written chapter with correct chronobiological detail.**

---

### 09. Bruksizam (Sleep Bruxism)

- Correct: Prevalence 8-13% adults, 14-20% children
- Correct: Comorbidity with OSA 25-50%
- Correct: SSRI-induced bruxism and buspirone 5-10 mg as countermeasure
- Correct: Occlusal splint protects teeth but does not treat cause
- Correct: PSG not routinely needed
- Correct: ICSD-3 diagnostic criteria accurately referenced
- Correct: Botulinum toxin type A noted as off-label for refractory cases

**Verdict: No errors. Solid chapter.**

---

### 10. Nedovoljan san (Insufficient Sleep Syndrome)

- Correct: Diagnostic approach (2-week sleep extension as both diagnostic test and treatment)
- Correct: AASM/SRS 2015 recommendation of 7-9 hours for adults 18-64, 7-8 hours for >=65
- Correct: Critical warning about MSLT producing false-positive narcolepsy diagnosis if insufficient sleep is not excluded
- Correct: True short sleepers (<1% population, DEC2/ADRB1 gene mutations)
- Correct: Equivalence of 24h sleep deprivation to 1.0 promille blood alcohol
- Correct: Social jetlag concept (>=2 hour difference between workday and weekend sleep)

**Verdict: No errors. Excellent, practically useful chapter.**

---

### 11. Poremecaj nocnih mora (Nightmare Disorder)

- Correct: IRT (Image Rehearsal Therapy) as first-line treatment -- Level A evidence per AASM 2010 best practice guide
- Correct: Nightmares as independent risk factor for suicidality (Pigeon 2012)
- Correct: PTSD screening emphasis, PCL-5 cutoff 31-33
- Correct: Differential diagnosis table (nightmares vs sleep terrors vs RBD)
- Correct: Medications causing nightmares (beta-blockers, SSRI withdrawal, cholinesterase inhibitors, dopamine agonists, corticosteroids)

**Prazosin:**

> **MODERATE ISSUE #3:** The guide presents prazosin with a generally positive tone (doses 1-15 mg, "smanjuje ucestalost i intenzitet nocnih mora, poboljsava kvalitetu sna") and lists it as "razina dokaza B." However, the guide does NOT adequately address the Raskind 2018 NEJM study (large VA multicenter RCT with 304 combat veterans) that showed **prazosin was no better than placebo** for PTSD nightmares. This study led to:
> - The VA/DoD Clinical Practice Guideline backing off from recommending prazosin (2017 update, based on pre-publication data)
> - The AASM 2018 position paper downgrading the recommendation for prazosin
>
> The author's note at the bottom mentions this in passing ("RASKIND pozitivan, PRAZOSIN VA studija neutralna -- u tekstu zadrzan pozitivan ton jer je ukupna literatura pretezno potvrdna, posebno za civile i umjerenije PTSP"), but this nuance does NOT appear in the main text that clinicians will read.
>
> **Recommendation:** Add a brief note in the main text: "Napomena: velika VA studija (Raskind et al., NEJM 2018) nije pokazala prednost prazosina nad placebom kod ratnih veterana s teskim PTSP-om. Novije metaanalize ipak sugeriraju ucinkovitost, osobito u civilnoj populaciji i umjerenijem PTSP-u. Rezultati su mijesani -- razgovarajte s pacijentom o ocekivanjima." This is particularly important in the Croatian context given the Homeland War veteran population.

- Correct: IRT protocol well-described and practically implementable by family physicians
- Correct: Benzodiazepines explicitly stated as NOT effective for nightmares

**Verdict: 1 moderate issue (prazosin evidence not fully presented). Otherwise excellent.**

---

### 12. SRED (Sleep-Related Eating Disorder)

- Correct: Classification as NREM parasomnia
- Correct: Zolpidem as most common drug-induced cause (up to 5% of users)
- Correct: Differential diagnosis vs Night Eating Syndrome (NES) -- excellent comparison table
- Correct: Safety measures for kitchen
- Correct: Topiramate 25-100 mg as specialist-prescribed option for refractory SRED
- Correct: Topiramate noted as available in Croatia

**Verdict: No errors. Well-written chapter.**

---

### 13. Centralna apneja u snu (Central Sleep Apnea)

- Correct: CSA diagnostic criteria (CAI >=5/hr, >50% central events)
- Correct: Four main clinical contexts (heart failure, opioids, stroke, high altitude)
- Correct: Treatment-emergent CSA (TE-CSA) described
- Correct: HSAT cannot reliably detect central apneas -- PSG required
- Correct: Optimization of heart failure treatment as primary intervention

**SERVE-HF / ASV Contraindication:**
- The guide states: "ASV is CONTRAINDICATED in heart failure with EF <=45% (HFrEF). SERVE-HF study (Cowie et al., NEJM 2015) showed increased cardiovascular and all-cause mortality (HR 1.28 for CV death; HR 1.34 for sudden death)."

> Verified: This is **correct** and current. The EF <=45% cutoff remains the standard contraindication in 2025-2026. The ADVENT-HF trial (more recent) also showed no benefit of ASV in this population. The guide's presentation of this critical safety information is accurate and appropriately emphasized.

- Correct: Treatment-emergent CSA (TE-CSA) prevalence 5-15%, often resolves spontaneously
- Correct: Referral pathways (pulmonologist + cardiologist in parallel for HF-related CSA)

**Verdict: No errors. Critical safety information about ASV correctly presented.**

---

## Screening Tools Findings

### patient-questions-hr.md (Patient Questionnaire)

- Correct: 14 questions covering all major sleep disorders in the guide
- Correct: Grouping by symptom cluster (sleep difficulties, daytime sleepiness, nocturnal events, schedule, other)
- Correct: Scoring/interpretation table accurately directs to appropriate next steps
- Correct: Red flag combinations identified (Q8 + age >50 for RBD; Q3 + Q14 for CSA; Q6 for cataplexy; Q11 + zolpidem for SRED)
- Well-designed screening instrument appropriate for a waiting room setting

**Verdict: No errors. Excellent practical tool.**

---

### clinical-flowchart.md (Clinical Flowcharts)

- Correct: Three algorithms covering the main presenting complaints ("can't sleep," "always tired," "something happens while I sleep")
- Correct: Decision logic follows guideline-based diagnostic pathways
- Correct: RBD flagged as urgent referral (age >50)
- Correct: Insufficient sleep as first step in EDS algorithm
- Correct: Notes about prazosin having "mixed results in newer studies" -- good

> **MINOR ISSUE #4:** The flowchart notes section states prazosin has "mijesani" (mixed) results, which is more accurate than the main chapter text (11-nocne-more) that presents it more positively. These should be reconciled.

- Correct: Mermaid diagram format appropriate for rendering in modern Markdown viewers

**Verdict: No errors. 1 minor inconsistency with main chapter text on prazosin.**

---

### scoring-algorithms.md (Scoring Algorithms)

- Correct: All five questionnaires covered (ESS, STOP-BANG, ISI, IRLS, RBDSQ)
- Correct: ISI cutoffs (0-7, 8-14, 15-21, 22-28) with >=15 as clinically significant insomnia
- Correct: IRLS severity categories (1-10 mild, 11-20 moderate, 21-30 severe, 31-40 very severe)
- Correct: RBDSQ cutoff >=5, sensitivity 96%, specificity 56%
- Correct: STOP-BANG interpretation (0-2 low, 3-4 intermediate, 5-8 high)
- Correct: ISI response threshold stated as >=8 points (consistent with Morin 2011)

> **MINOR ISSUE #5 (Cross-reference):** The ISI clinically significant change score is stated as >=8 here (correct per Morin 2011) but as >=6 in the main insomnia chapter (01-nesanica.md). These need to be reconciled. See Moderate Issue #1 above.

- Correct: Practical time estimates for each questionnaire
- Correct: "Which questionnaire for which complaint" summary table is excellent

**ESS categorization:**
- The scoring-algorithms file uses: 0-5 normal, 6-10 borderline, 11-12 mild EDS, 13-15 moderate EDS, 16-24 severe EDS
- The ESS questionnaire file uses: 0-7 normal, 8-9 borderline, 10-15 EDS, 16-24 severe EDS

> **MINOR ISSUE #6:** There is a discrepancy in ESS subcategorization between the scoring-algorithms file and the ESS questionnaire file. The scoring-algorithms file splits "normal" at 0-5 with 6-10 as borderline, while the ESS questionnaire file splits at 0-7 normal and 8-9 borderline. The original Johns classification uses 0-10 as normal range and >=11 as EDS. Neither subcategorization is "wrong" per se, but they are inconsistent with each other. **Recommendation:** Use the categories from the ESS questionnaire file (0-7 normal, 8-9 borderline, >=10 EDS) throughout, as these are closer to the widely cited schema, while noting that the original cutoff for EDS is >=11.

**Verdict: No errors in substance. 2 minor inconsistencies noted.**

---

## Questionnaire Findings

### ess-hr.md (Epworth Sleepiness Scale)

- Correct: 8 situations, 0-3 per item, range 0-24
- Correct: Reference to official Croatian validation (Pecotic et al. 2012, KBC Split)
- Correct: Cutoff stated as >=10
- Correct: Limitations noted (subjective, limited sensitivity for mild OSA)

**Verdict: No errors.**

---

### stop-bang-hr.md (STOP-BANG Questionnaire)

- Correct: 8 items, yes/no, range 0-8
- Correct: Risk stratification (0-2 low, 3-4 intermediate, 5-8 high)
- Correct: BMI >35 threshold
- Correct: Neck circumference >40 cm
- Correct: Age >50
- Correct: Alternative high-risk criteria (STOP >=2 + any BANG item)
- Correct: Reference to Croatian validation of STOP portion (Pecotic et al. 2012)
- Correct: Note about lower reliability in low-BMI populations

**Verdict: No errors. Well-implemented.**

---

### isi-hr.md (Insomnia Severity Index)

- Correct: 7 items, 0-4 each, range 0-28
- Correct: Severity categories (0-7, 8-14, 15-21, 22-28)
- Correct: Clinical cutoff >=15 for significant insomnia, >=10 for screening
- Correct: Reference to Bastien 2001 and Morin 2011
- Correct: Note about Mapi Research Trust for official translations
- Correct: Remission threshold ISI <8

> Note: The ISI file states "Smanjenje >=7 bodova" as clinically significant response (line 155), but also mentions "pad ispod 8" as remission. This is acceptable -- the >=7 threshold is a reasonable clinical approximation of the Morin 2011 finding of 8.4, and some sources do use 7 as the threshold. However, the main chapter (01-nesanica) uses >=6, which is the inconsistency flagged above.

**Verdict: No errors in this file.**

---

### irls-hr.md (IRLS Rating Scale)

- Correct: 10 items, 0-4 each, range 0-40
- Correct: Severity categories (0 none, 1-10 mild, 11-20 moderate, 21-30 severe, 31-40 very severe)
- Correct: Explicit note that IRLS is NOT diagnostic -- diagnosis is clinical (4 criteria)
- Correct: All 4 diagnostic criteria accurately stated
- Correct: Ferritin target >=75 mcg/L, ideally >=100 (see Critical Issue #1 for update)
- Correct: Treatment recommendations by severity
- Correct: Augmentation warning
- Correct: Note about unofficial Croatian translation status

**Verdict: Ferritin threshold issue noted above (Critical Issue #1). Otherwise correct.**

---

### rbdsq-hr.md (RBDSQ)

- Correct: 13 questions, 10 scored items (questions 6.1-6.4 scored as single item, questions 11-13 not scored)
- Correct: Maximum score 10 (not 13)
- Correct: Cutoff >=5
- Correct: Sensitivity 96%, specificity 56%
- Correct: Reference to Stiasny-Kolster 2007
- Correct: Clinical notes about neurodegenerative prodrome (>80% phenoconversion)
- Correct: Medications that cause RBD listed (SSRIs, SNRIs, mirtazapine, TCAs)
- Correct: Follow-up recommendations (annual neurological exam, DaTscan if parkinsonian signs, MoCA for cognitive screening)

**Verdict: No errors. Excellent implementation.**

---

## Critical Issues Requiring Immediate Correction

### 1. RLS Ferritin Threshold (Chapter 03)

**Current text:** "Lijeciti ako je <75 ng/mL (neki preporucuju <100)"
**Problem:** The 2024 AASM Clinical Practice Guideline (published October 2024 in JCSM) has established a two-tier approach:
- Ferritin <75 ng/mL: oral or IV iron
- Ferritin 75-100 ng/mL: IV iron only (oral iron poorly absorbed at this level)
- Target: >=100 ng/mL (not merely >=75)

**Correction:** Update all references to ferritin threshold throughout the guide (chapter 03, IRLS questionnaire, scoring algorithms) to reflect the 2024 two-tier recommendation. The target should be >=100 ng/mL, with the route of administration determined by baseline ferritin level.

### 2. Dopamine Agonist Recommendation for RLS (Chapter 03)

**Current text:** Dopamine agonists presented as "second line with caution" (DRUGI KORAK)
**Problem:** The 2024 AASM guideline now gives a **conditional recommendation AGAINST** the routine use of dopamine agonists for RLS, not merely "second-line." This is a significant paradigm shift.

**Correction:** Update the text to reflect that dopamine agonists are now conditionally recommended against (not just "second-line") per AASM 2024. They may still be used when patients prefer short-term symptom relief and accept augmentation risk, but the framing should change from "second line" to "use only when gabapentinoids are insufficient or not tolerated AND patient accepts augmentation risk after informed discussion."

---

## Moderate Issues Requiring Attention

### 3. ISI Clinically Significant Change Threshold (Chapter 01 vs scoring-algorithms.md)

**Inconsistency:** Chapter 01 states >=6 points; scoring-algorithms.md states >=8 points.
**Resolution:** Adopt >=7 points as a reasonable middle ground, or >=8 per Morin 2011. Update both locations to match.

### 4. ESS Cutoff Inconsistency (Across Multiple Files)

**Inconsistency:** >=10 used in most screening documents but >=11 used in chapter 02. ESS subcategories differ between scoring-algorithms.md and ess-hr.md.
**Resolution:** Standardize on >=10 as the screening threshold throughout (appropriate for primary care), while noting that the original ESS defines >=11 as EDS. Reconcile subcategory breakdowns across files.

### 5. Prazosin Evidence Presentation (Chapter 11)

**Problem:** Main text presents prazosin positively without mentioning the negative Raskind 2018 VA study. The author's note acknowledges this but it does not appear in the clinical text that practitioners will read.
**Resolution:** Add a brief balanced note in the main text about mixed evidence, especially important in the Croatian context (veteran population).

### 6. 2024 AASM RLS Guideline Reference Missing

**Problem:** The references in chapter 03 cite the 2016 AAN guideline (Winkelman), the 2018 IRLSSG iron guidelines (Allen), and the 2021 Mayo Clinic algorithm (Silber). The definitive 2024 AASM Clinical Practice Guideline for RLS/PLMD treatment is not cited.
**Resolution:** Add: Winkelman JW, Berkowski JA, DelRosso LM, et al. Treatment of restless legs syndrome and periodic limb movement disorder: an American Academy of Sleep Medicine clinical practice guideline. *J Clin Sleep Med.* 2024;20(12):2015-2048.

---

## Minor Issues

1. **ICSD-3 vs ICSD-3-TR in abbreviation table** (chapter 00): The guide uses ICSD-3-TR throughout but the abbreviation table lists "ICSD-3." Update abbreviation to "ICSD-3-TR."

2. **RBD phenoconversion nuance** (chapter 04): Consider adding a brief note that conversion rates vary by cohort and follow-up duration (73.5% at 12 years per Postuma 2019; lower in some Asian cohorts).

3. **Solriamfetol availability** (chapter 06): Explicitly state that solriamfetol is not available in Croatia, as is done in chapter 07.

4. **Prazosin inconsistency between chapter 11 and flowchart**: Chapter 11 is more positive; flowchart notes acknowledge mixed evidence. Reconcile.

5. **ESS subcategories**: Different breakdowns in scoring-algorithms.md (0-5 normal, 6-10 borderline) vs ess-hr.md (0-7 normal, 8-9 borderline). Standardize.

6. **ISI clinically significant change**: >=6 in chapter 01 vs >=8 in scoring-algorithms.md vs >=7 in ISI questionnaire file. Standardize.

---

## Items Verified as Correct (Specific Audit Targets)

| Item | Guide States | Current Evidence | Status |
|------|-------------|-----------------|--------|
| RLS ferritin threshold | <75, some say <100 | 2024 AASM: two-tier (<75 oral/IV, 75-100 IV only), target >=100 | Needs update |
| RBD >80% conversion | >80% within 10-15 years | Postuma 2019: 73.5% at 12y, modeled >90% at 14y; Schenck 2013: 81% at 16y | Correct (within accepted range) |
| Narcolepsy MSLT criteria | <=8 min + >=2 SOREMPs | ICSD-3-TR: <=8 min + >=2 SOREMPs | Correct |
| OSA STOP-BANG thresholds | >=3 intermediate, >=5 high | Current standard unchanged | Correct |
| CBT-I first-line for insomnia | Yes, level Ia evidence | AASM 2021, confirmed 2024-2025 | Correct |
| CSA ASV contraindication | HFrEF EF <=45% | SERVE-HF; confirmed current 2025 | Correct |
| Prazosin for nightmares | Positive presentation | Raskind 2018 NEJM negative; AASM downgraded; overall mixed | Needs nuance |
| Gabapentin > DA for RLS | Alpha-2-delta ligands as first line | 2024 AASM: strong recommendation FOR gabapentinoids, conditional AGAINST DAs | Correct direction, needs strengthening |
| ESS cutoff | >=10 (screening) | Standard: >=10 for screening, >=11 for EDS per Johns | Acceptable for screening |
| ISI cutoff >=15 | Yes | Morin 2011: >=15 for clinical insomnia | Correct |
| RBDSQ cutoff >=5 | Yes | Stiasny-Kolster 2007: >=5 | Correct |
| IRLS severity categories | 1-10/11-20/21-30/31-40 | Walters 2003: correct | Correct |

---

## Recommendations

### Immediate Actions (Before Publication)

1. **Update RLS chapter** with 2024 AASM ferritin thresholds and dopamine agonist recommendation change
2. **Add Raskind 2018 note** to prazosin section in nightmare chapter
3. **Standardize ISI change threshold** across all files (recommend >=7 or >=8)
4. **Standardize ESS cutoff** across all files (recommend >=10 for screening, with note about >=11 per Johns)
5. **Add 2024 AASM RLS guideline** to chapter 03 references

### Future Considerations

6. Consider adding a brief section on **sleep and pregnancy** (OSA screening in pregnancy, RLS in pregnancy, medication safety)
7. Consider adding **pediatric OSA** as a brief addendum (adenotonsillectomy as first-line, different AHI thresholds)
8. The guide currently does not mention **hypoglossal nerve stimulation (Inspire)** as an alternative to CPAP for OSA -- this may be relevant as it becomes more available in Europe
9. Consider mentioning **suvorexant/lemborexant** (orexin receptor antagonists) as a drug class that may become available in Croatia in the future, given their growing evidence base for insomnia

### Overall Assessment

This is an outstanding clinical guide that fills a genuine gap in Croatian primary care education. The scientific accuracy is remarkably high -- the vast majority of content is correct per current guidelines and appropriately referenced. The writing is clear, clinically practical, and appropriately calibrated for the target audience (family physicians). The guide's emphasis on under-recognized conditions (RLS, RBD, DSWPD, insufficient sleep) and common diagnostic pitfalls is particularly valuable.

The 2 critical issues identified are both related to the October 2024 AASM guideline for RLS treatment, which was published recently enough that it is understandable the guide had not yet incorporated it. The remaining issues are moderate-to-minor and do not compromise patient safety.

**Bottom line: This guide is publication-ready with the corrections noted above.**

---

*Audit completed: 2026-02-22*
*Audit methodology: Line-by-line review of all 22 files against ICSD-3-TR (2023), AASM 2021-2025 guidelines, ESRS position papers, IRLSSG 2024 guidelines, and current literature via systematic web search verification.*

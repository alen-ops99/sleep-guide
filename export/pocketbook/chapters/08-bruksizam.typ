// ============================================================================
// Poglavlje 8: Bruksizam u snu
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 8,
  title: "Bruksizam u snu",
  mkb: "G47.63",
  icsd: "Sleep Related Bruxism",
  color: cat-movement,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Maja, 35 g.*, stomatolog je uputio — istrošena caklina, bolnost masetera ujutro. Na pitanje „Hrčete li?“ — „Da, muž se žali.“ STOP-BANG 3/8. Uzima sertralin 50 mg za anksioznost — nitko nije povezao bruksizam s antidepresivom.]
)
#v(3pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [Partner čuje škripanje zubima noću. Jutarnja bol u čeljusti/temporalnom području. Istrošenost cakline. Hipertrofija masetera.],
    [*Učini*], [Pregledaj zube i palpiraj maseter. Uputiti stomatologu za udlagu. Probir za OSA (25–50% komorbiditeta!). Provjeri lijekove (SSRI → buspiron 5–10 mg).],
    [*Uputi*], [Stomatolog (uvijek — udlaga). Pulmolog ako sumnja na OSA. Neurolog za refraktorne slučajeve (botulinum toksin).],
  )
]

#v(4pt)
#kljucna-poruka[
  + *Bruksizam nije bezazlen* — trajno oštećenje cakline, frakture, TMZ disfunkcija. Svaki pacijent treba uputnicu stomatologu.
  + *Uvijek pitajte o hrkanju* — 25–50% komorbiditet s OSA. CPAP može značajno reducirati bruksizam.
  + *Pregledajte listu lijekova* — SSRI/SNRI su česti uzročnici. Buspiron 5–10 mg navečer pomaže.
  + *Okluzalna udlaga štiti zube, ali ne liječi uzrok.* Potreban sveobuhvatan pristup: OSA, stres, lijekovi.
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [„Je li vam itko rekao da škrgućete zubima u snu?“], [Najčešći način otkrivanja — partner čuje],
    [„Budite li se s bolnom ili ukočenom čeljusti?“], [Jutarnja bol masetera = klasičan znak],
    [„Imate li jutarnje glavobolje?“], [Tenzijske glavobolje koje nestaju za 30–60 min],
    [„Hrčete li? Prestajete li disati u snu?“], [25–50% bruksizma ima komorbidnu OSA-u],
    [„Koji lijekove uzimate?“], [SSRI, SNRI, stimulansi = jatrogeni uzročnici],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

Bruksizam u snu je repetitivno stiskanje i škrgutanje zuba tijekom sna s prevalencijom od 8–13% odraslih; 25–50% pacijenata s OSA-om ima komorbidni bruksizam. U praksi s 2.000 pacijenata: 160–260 odraslih.

*Ključni simptomi:*
- *Škrgutanje zubi u snu* (prijavljuje partner) — najčešći način otkrivanja
- *Trošenje zubne cakline*, frakture zubi — abrazija okluzalnih ploha, gubitak anatomije kvržica
- *Jutarnja bol u čeljusti, TMZ-u ili sljepoočnicama* — povlači se tijekom dana

*Podržavajući znakovi:*
- Jutarnje tenzijske glavobolje (bilateralne, tupe, nestaju za 30–60 min)
- Hipertrofija m. massetera (vidljiva ili palpabilna)
- Stres i anksioznost kao pogoršavajući čimbenici
- *Komorbidna OSA* — epizode škrgutanja prate apneička mikrobuđenja

*Pitanja za anamnezu:*
+ „Je li vam itko rekao da škrgućete zubima u snu?“
+ „Budite li se s bolnom ili ukočenom čeljusti?“
+ „Imate li jutarnje glavobolje koje nestaju tijekom jutra?“
+ *„Hrčete li? Prestajete li disati u snu?“* — probir za OSA
+ „Koji lijekove uzimate?“ — osobito SSRI, stimulansi

// === Probir i dijagnostika ===
== Probir i dijagnostika

*Klinička dijagnoza:* Anamneza škrgutanja (partner) + simptomi (bol, glavobolja) + znakovi (abrazija, hipertrofija masetera).

*Što LOM može učiniti:*
- *Pregledati zube* — uočiti značajno trošenje okluzalnih ploha
- *Palpirati maseter i temporalni mišić* — bolnost, hipertrofija
- *Probir za OSA* — STOP-BANG #see(<upitnik-stop-bang>) kod svakog pacijenta s bruksizmom
- *Pregledati listu lijekova* — SSRI i stimulansi česti uzročnici
- *Procjena stresa* — GAD-7 ili anamneza stresnih čimbenika
- *Pitati o kofeinu i alkoholu* — oba pogoršavaju bruksizam

*Svaki pacijent s bruksizmom → uputnica stomatologu* za procjenu oštećenja i izradu okluzalne udlage.

*PSG* — NIJE potrebna za rutinsku dijagnozu. Indicirana samo pri sumnji na komorbidnu OSA.

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  - *Značajno oštećenje zuba* (frakture, gubitak cakline do dentina) → hitna uputnica stomatologu
  - *Disfunkcija TMZ-a* (zaključavanje čeljusti, nemogućnost otvaranja usta) → TMZ specijalist / maksilofacijalni kirurg
  - *Novonastali bruksizam nakon uvođenja lijeka* (SSRI, stimulansi) → revizija farmakoterapije; buspiron ili zamjena lijeka
  - *Bruksizam uz glasno hrkanje / svjedočene apneje* → probir za OSA (STOP-BANG); uputiti na sleep studiju
  - *Teška jutarnja glavobolja svakodnevno* → evaluacija; razmotriti PSG
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== Zaštita zuba — stomatološka uputnica (uvijek)

*Okluzalna udlaga (occlusal splint)* je temelj zaštite:
- Štiti zube od daljnjeg oštećenja — preuzima sile stiskanja
- Može smanjiti bol u muskulaturi i TMZ-u
- *Ne zaustavlja sam bruksizam* — čuva zube, ali mišićna aktivnost ostaje
- Kontrola kod stomatologa svakih 6–12 mj.

=== Liječenje komorbidne OSA-e

Ako probir ukaže na OSA: uputiti na sleep studiju. *CPAP može značajno reducirati bruksizam* — uklanjanjem apneičkih mikrobuđenja. Ovo je kauzalno liječenje u toj subpopulaciji.

=== Upravljanje stresom i bihevioralne mjere

- Identifikacija i redukcija stresnih čimbenika
- Progresivna mišićna relaksacija čeljusti prije spavanja
- Redovit raspored spavanja, adekvatno trajanje sna
- Izbjegavanje žvakanja gume — smanjiti dnevno opterećenje muskulature

=== Revizija farmakoterapije

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Lijek / klasa],
    text(weight: "bold")[Mehanizam],
    text(weight: "bold")[Pristup],
  ),
  [*SSRI* (sertralin, fluoksetin, paroksetin)], [Serotonergička facilitacija motoričke aktivnosti], [Zamjena na mirtazapin/bupropion; ili dodati buspiron 5–10 mg navečer],
  [*SNRI* (venlafaksin, duloksetin)], [Sličan kao SSRI], [Ista strategija kao za SSRI],
  [*Stimulansi* (metilfenidat)], [Dopaminergička hiperaktivnost], [Smanjiti dozu; ne uzimati navečer],
  [*Alkohol*], [Fragmentacija sna, arousali], [Izbjegavati 3–4 h prije spavanja],
  [*Kofein*], [Mišićna ekscitabilnost], [Izbjegavati nakon 14h],
)

#pearl[*Buspiron* (5-HT1A parcijalni agonist) 5–10 mg navečer može reducirati SSRI-inducirani bruksizam. Najčešće korištena strategija kada zamjena antidepresiva nije moguća. Buspiron je *dostupan u Hrvatskoj*.]

=== Simptomatsko liječenje

Za jutarnju bol: ibuprofen 400–600 mg po potrebi + topli oblozi na maseter (15–20 min). Za refraktorne slučajeve s teškom hipertrofijom: botulinski toksin tip A (off-label, specijalist).

#pharma-table((
  // Buspiron
  (
    [*Buspiron*\ #text(size: 7pt)[(za SSRI-bruksizam)]],
    [5–10 mg\ t½ 2–3 h\ #text(size: 7pt)[(navečer)]],
    [Hepat.\ CYP3A4],
    [MAOI *✖*\ CYP3A4 inhib. *⚠*],
    [✓],
  ),
))

// === Praćenje ===
== Praćenje

#set text(size: 8.5pt)
#table(
  columns: (0.8fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Kada],
    text(weight: "bold")[Što učiniti],
  ),
  [*4 tjedna*], [Evaluacija simptoma. Provjera pridržavanja udlage. Buspiron — učinak?],
  [*6–12 mj.*], [Stomatološka kontrola (udlaga se troši). Probir za OSA ako ranije propušteno.],
  [*Trajno*], [Bruksizam je kroničan; redovite revizije simptoma i farmakoterapije.],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [*Svaki pacijent* s bruksizmom], [Stomatolog], [Procjena oštećenja zuba;\ izrada okluzalne udlage],
  [Sumnja na OSA\ (hrkanje, STOP-BANG ≥3)], [Pulmolog / centar\ za spavanje], [Sleep studija;\ CPAP ako indicirano],
  [Disfunkcija TMZ-a\ (zaključavanje, krepitacije)], [TMZ specijalist /\ maksilofacijalni kirurg], [Specijalizirana\ evaluacija],
  [Refraktorni bruksizam s\ teškom hipertrofijom], [Neurolog /\ maksilofacijalni kirurg], [Botulinski toksin tip A],
  [Bruksizam uz drugu\ parasomniju], [Centar za medicinu\ spavanja], [PSG; evaluacija složenog\ poremećaja],
))

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [Ignorirati bruksizam kao „bezazlen“], [Može uzrokovati trajno, ireverzibilno oštećenje zuba i TMZ-a],
  [Ne pitati za hrkanje i OSA], [25–50% bruksizma asocirano s OSA — uvijek probir STOP-BANG],
  [Ne provjeriti listu lijekova], [SSRI, SNRI, stimulansi česti jatrogeni uzročnici],
  [Udlaga „liječi“ bruksizam], [Udlaga štiti zube, ali ne zaustavlja mišićnu aktivnost — liječiti uzrok],
  [Dijagnosticirati „stres“ bez obrade], [Isključiti OSA i jatrogeni uzrok prije pripisivanja stresu],
  [Ne pratiti pacijenta], [Bruksizam je kroničan; stomatolog svakih 6–12 mj.],
))

#literatura((
  [Lobbezoo F et al. International consensus on the assessment of bruxism: Report of a work in progress. _J Oral Rehabil._ 2018;45(11):837–844.],
  [Jokubauskas L, Baltrušaitytė A. Relationship between obstructive sleep apnoea syndrome and sleep bruxism: a systematic review. _J Oral Rehabil._ 2017;44(2):144–153.],
  [Macedo CR et al. Pharmacotherapy for sleep bruxism. _Cochrane Database Syst Rev._ 2014;(10):CD005578.],
  [Svensson P et al. Bruxism – A Systematic Review. _J Oral Rehabil._ 2008;35(7):509–523.],
  [Manfredini D et al. Role of psychosocial factors in the etiology of bruxism. _J Orofac Pain._ 2009;23(2):153–166.],
))

#chapter-summary(
  title: "8. Bruksizam u snu",
  category: "Poremećaji pokreta",
  color: cat-movement,
  prepoznaj: [Partner čuje škrgutanje. Jutarnja bol čeljusti/sljepoočnica. Istrošena caklina. Hipertrofija masetera.],
  ucini: [Stomatolog za udlagu (uvijek). STOP-BANG probir (25–50% komorbiditet s OSA). Revizija lijekova (SSRI → buspiron).],
  uputi: [Stomatolog (svaki pacijent), pulmolog ako sumnja na OSA, neurolog za refraktorne slučajeve.],
  drugs: (
    ([Buspiron], [5–10 mg navečer], [✓]),
    ([Okluzalna udlaga], [Stomatolog], [—]),
  ),
  red-flags: (
    [Značajno oštećenje zuba — hitna uputnica stomatologu],
    [Bruksizam + glasno hrkanje — probir za OSA],
    [Novonastali nakon SSRI/SNRI — revizija farmakoterapije],
  ),
)


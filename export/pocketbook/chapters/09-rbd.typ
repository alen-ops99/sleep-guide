// ============================================================================
// Poglavlje 9: REM poremećaj ponašanja u snu (RBD)
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 9,
  title: "Poremećaj ponašanja u REM spavanju (RBD)",
  mkb: "G47.52",
  icsd: "REM Sleep Behavior Disorder",
  color: cat-parasomnia,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Zdravko, 67 g.*, supruga kaže da „udara rukama, viče i pada iz kreveta u snu“ — počelo prije 2 godine. Epizode u drugoj polovici noći. On se ničega ne sjeća. U posljednje vrijeme primjećuje „sporije hodanje i trnu mu prsti.“ Četiri godine simptoma — nitko nije pitao o ponašanju u snu.]
)
#v(3pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [Partner prijavljuje udaranje, vikanje, padanje iz kreveta (2. polovica noći). Sjećanje na živopisan san. Dob >50 g.],
    [*Učini*], [RBDSQ (≥5 = pozitivan). ODMAH sigurnost spavaće sobe. Melatonin 3--6 mg. Revizija lijekova (SSRI/SNRI).],
    [*Uputi*], [SVE sumnje → neurolog. HITNO: rani parkinsonizam, kognitivni pad, teške ozljede. RBD = prodrom PD (>80% konverzija).],
  )
]

#v(4pt)
#kljucna-poruka[
  + *RBD = prozor u budućnost mozga.* >80% razvit će Parkinsonovu bolest (PD), demenciju s Lewyjevim tjelešcima (DLB) ili multisistemsku atrofiju (MSA) unutar 10--15 godina. Rana dijagnoza omogućuje praćenje i pripremu.
  + *Pitajte partnera, ne samo pacijenta.* Heteroanamneza je najvažniji dijagnostički alat u PZZ.
  + *Novo izvođenje snova >50 g. nikada nije benigno.* Ne otpisujte kao „čudne snove“. Neurološka obrada obavezna.
  + *Sigurnost spavaće sobe je intervencija br. 1* -- ispred svih lijekova. Madrac na pod, ukloniti oštre predmete.
  + *Provjerite listu lijekova.* SSRI, SNRI i beta-blokatori mogu izazvati ili demaskirati RBD.
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [Partner: „Je li Vaš partner ikada udarao, vikao ili se micao u snu?“], [Heteroanamneza je najvažniji dijagnostički alat],
    [„Je li ikada pao iz kreveta tijekom spavanja?“], [Padanje iz kreveta → rizik ozljede + potvrda motorike u snu],
    [„Sjećate li se živopisnih, nasilnih snova?“], [Sjećanje na san + motorička aktivnost = RBD],
    [„Osjećate li gubitak njuha?“], [Anosmija + RBD → gotovo patognomonično za prodrom PD],
    [„Primjećujete li sporije hodanje, ukočenost?“], [Rani parkinsonizam → fenokonverzija u tijeku],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

Poremećaj ponašanja u REM snu (RBD; _REM Sleep Behavior Disorder_) nastaje kad fiziološka atonija u snu s brzim pokretima očiju (REM; _Rapid Eye Movement_) izostane — pacijent doslovno izvodi svoje snove. RBD je najsnažniji poznati prodrom alfa-sinukleinopatija (PD, DLB, MSA) — >80% razvit će neurodegenerativnu bolest unutar 10–15 godina. Prevalencija: u praksi s 2.000 pacijenata: 15–40 pacijenata, većina nedijagnosticiranih.

*Kritični znakovi:*
- Partner prijavljuje da se pacijent *tuče, udara, viče ili pada iz kreveta* u snu
- Epizode u *drugoj polovici noći* (REM prevladava)
- Pacijent može opisati *živopisne snove* koje „izvodi“

*Podržavajući znakovi:*
- Dob >50 godina
- Ozljede tijekom sna (pacijent ili partner)
- Hiposmija, obstipacija, ortostatska hipotenzija (prodromalni parkinsonizam)
- Korištenje selektivnih inhibitora ponovne pohrane serotonina (SSRI) / inhibitora ponovne pohrane serotonina i noradrenalina (SNRI)

*Pitanja za partnera:*
+ „Je li Vaš partner ikada udarao, vikao ili se micao u snu?“
+ „Je li ikada pao iz kreveta tijekom spavanja?“
+ „Jeste li Vi ikada bili ozlijeđeni dok je partner spavao?“

*Pitanja za pacijenta:*
+ „Sjećate li se živopisnih, često nasilnih snova?“
+ „Jeste li se probudili na podu ili s neobjašnjenim modricama?“
+ „Osjećate li gubitak njuha, usporavanje pokreta, zatvor?“

=== Diferencijalna dijagnoza

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1fr, 1fr, 1fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Značajka],
    text(weight: "bold")[RBD],
    text(weight: "bold")[NREM parasomnije],
    text(weight: "bold")[Noćna epilepsija],
  ),
  [Vrijeme], [Zadnja trećina], [Prva trećina], [Bilo kada],
  [Oči], [*Zatvorene*], [*Otvorene*], [Varijabilno],
  [San], [*Da* -- živopisan], [*Ne* -- amnezija], [Ne ili djelom.],
  [Buđenje], [Brzo, orijentiran], [Sporo, konfuzija], [Postikt. konfuz.],
  [Dob], [>50 godina], [Dječja dob], [Svaka dob],
  [Neurodeg.], [*>80%*], [Ne], [Ne],
)

// === Probir i dijagnostika ===
== Probir i dijagnostika

LOM ne postavlja definitivnu dijagnozu -- to zahtijeva *video-polisomnografiju (PSG; _Polysomnography_) s proširenim EMG montažom*. Zadaće LOM-a: (1) prepoznati sumnju, (2) primijeniti RBDSQ, (3) uputiti na PSG.

*Upitnik za probir poremećaja ponašanja u REM snu (RBDSQ)* #see(<upitnik-rbdsq>) -- 13 da/ne pitanja, primjenjiv u čekaonici:
- *≥5 bodova* = pozitivan probir → upućivanje na PSG
- Osjetljivost 96%, specifičnost 56% (znatan broj lažno pozitivnih → PSG neophodan za potvrdu)

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  - *Dob >50 + novo izvođenje snova* → visoka vjerojatnost prodroma α-sinukleinopatije → *HITNA uputnica*
  - *Ozljede pacijenta ili partnera* → subduralni hematom, frakture → sigurnost + hitna obrada
  - *Rani parkinsonizam uz RBD* (tremor, bradikinezija, rigor) → fenokonverzija u tijeku → *HITNO neurologu*
  - *Anosmija* + RBD → gotovo patognomonično za prodrom PD
  - *Novonastala kronična konstipacija* → autonomna disfunkcija
  - *Pojava RBD-a nakon uvođenja SSRI/SNRI* → lijekovski RBD → preispitati terapiju

  *Lijekovi koji izazivaju/pogoršavaju RBD:* SSRI, SNRI, TCA (klomipramin), beta-blokatori, MAO inhibitori
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== 1. Sigurnost spavaće sobe -- PRIORITET BROJ JEDAN

Najvažnija intervencija, *odmah*, prije dijagnostike ili farmakoterapije:
- Ukloniti oštre predmete s noćnog ormarića
- Spustiti krevet -- idealno *madrac na pod*
- Podstaviti rubove kreveta jastucima
- Zatvoriti i zaključati prozore u blizini kreveta
- *Razdvojiti spavanje* ako je partner pod rizikom ozljede -- medicinska preporuka, ne „kraj odnosa“

=== 2. Farmakoterapija

#pharma-table((
  (
    [*Melatonin*\ #text(size: 7pt)[(1. linija)]],
    [3--12 mg\ t½ 40--60 min],
    [Hepat.\ CYP1A2],
    [Fluvoksamin *⚠*],
    [✓],
  ),
  (
    [*Klonazepam*\ #text(size: 7pt)[(2. linija)]],
    [0,25--2 mg\ t½ 30--40 h],
    [Hepat.\ CYP3A4],
    [Opioidi *✖*\ CNS depresanti *✖*\ Alkohol *✖*],
    [✓],
  ),
))

*Melatonin:* Započeti s 3 mg, 30--60 min prije spavanja. Titrirati naviše svaka 2 tjedna. Za RBD su potrebne *više doze* nego za nesanicu (6--12 mg nije neuobičajeno). Puni učinak: 2--4 tjedna. Izvrstan sigurnosni profil.

#pearl[*Načelo „start low, go slow”:* Melatonin za RBD započeti s 3 mg. Titrirati za 3 mg svaka 2 tjedna do učinka (max 12 mg). Klonazepam — započeti s 0,25 mg, nikada bez isključivanja OSA-e.]

#pearl[*Konverzijski rizik po dobi* (Mayo Clinic, 2024, 372 pacijenta): >70 g. = ~6%/god.; 60--70 g. = ~2,6%/god.; 50--60 g. = \<1%/god.; \<50 g. = 0,11%/god. Samo 1 od 48 fenokonvertiranih bio je mlađi od 50. *Ispod 50 g. ne spominjite Parkinsonovu bolest* — profil rizika je potpuno drukčiji.]

#pearl[*Etika priopćavanja prognoze:* Koristite pristup dijeljenog odlučivanja. Recite: „RBD može predstavljati rizik za razvoj drugih neuroloških stanja u budućnosti. Koliko biste o tome željeli znati?” Pustite pacijenta da odredi dubinu razgovora. Pacijenti gotovo uvijek žele znati — ali na svoj način i u svom tempu.]

#pearl[*5-minutni neurološki pregled na godišnjoj kontroli:* (1) MoCA ili kratki kognitivni test, (2) ortostatski RR (pad sistolički ≥20 mmHg u 3 min), (3) tapkanje prstima za bradikineziju, (4) pasivni opseg pokreta za rigiditet, (5) inspekcija za tremor u mirovanju, (6) hod: kadenca, duljina koraka, okretanje.]

*Klonazepam:* 0,25 mg, titrirati svaka 1--2 tjedna. Učinkovitost 80--90%. *OPREZ:*
- *Opstruktivna apneja u snu (OSA)* → klonazepam pogoršava apneje (isključiti OSA ili započeti CPAP prije uvođenja)
- *Starija dob (>75 g.)* → povećan rizik padova, kognitivnog pogoršanja
- *Apneja + RBD:* česta kombinacija u starijoj dobi → melatonin je jasniji izbor

=== 3. Revizija lijekova

- SSRI ili SNRI? → Razmotrite vezu s RBD-om
- Beta-blokator? → Razmotriti zamjenu
- RBD nastao *nakon* uvođenja novog lijeka? → temporalna korelacija
- *Ne ukidajte SSRI/SNRI naglo* -- razgovarajte s psihijatrom o zamjeni (bupropion ne pogoršava RBD)

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
  [*2--4 tjedna*], [Učinak melatonina? Sigurnost provedena? Ozljede?],
  [*3 mjeseca*], [Neurološka obrada u tijeku? Prodromalni znakovi?],
  [*6--12 mj.*], [Praćenje: hiposmija, motorički simptomi, kognitivni status.],
  [*Godišnje*], [Neurološki pregled. Pratiti fenokonverziju (tremor, bradikinezija, kognitivni pad).],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

*Temeljno pravilo: SVE sumnje na RBD upućuju se neurologu.*

#referral-table((
  [Sumnja na RBD (anamneza + RBDSQ ≥5)], [*Neurolog* → PSG], [Redovna uputnica (4--6 tj.)],
  [RBD + rani parkinsonizam], [*Neurolog* (pokretački poremećaji)], [*HITNO* (1--2 tjedna)],
  [RBD + kognitivni pad], [*Neurolog* + neuropsih. testiranje], [*HITNO*],
  [RBD + teške ozljede], [*Neurolog* + akutni klonazepam], [*HITNO*],
  [Nejasan slučaj (RBD vs. NREM vs. epilepsija)], [Centar za spavanje → vPSG], [Redovna uputnica],
))

#pearl[Dok čekate neurološki termin -- LOM može i treba: (1) odmah primijeniti sigurnost spavaće sobe, (2) započeti melatonin 3--6 mg, (3) dokumentirati epizode (dnevnik ili video mobitelom).]

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [„To su noćne more“], [Noćne more = buđenje prestrašen, bez motorike. RBD = udaranje, vikanje, padanje],
  [„To je mjesečarenje“], [NREM: prva trećina noći, oči otvorene, amnezija. RBD: zadnja trećina, oči zatvorene, sjećanje],
  [„Star je, to je normalno“], [Novo izvođenje snova >50 g. *nikada nije normalno*. Crvena zastavica za neurodegeneraciju],
  [„Ne treba neurologa, samo snovi“], [>80% idiopatskog RBD-a prelazi u PD/DLB/MSA. Neurološko praćenje obavezno],
  [„SSRI ne mogu uzrokovati ovo“], [SSRI/SNRI su dokumentirani uzroci RBD-a. Provjerite listu lijekova],
  [„Klonazepam, problem riješen“], [Simptomatsko liječenje bez neurološkog praćenja = propuštena prilika za rano otkrivanje],
))

#literatura((
  [Postuma RB et al. Risk and predictors of dementia and parkinsonism in idiopathic REM sleep behaviour disorder: a multicentre study. _Brain._ 2019;142(3):744–759.],
  [St Louis EK, Boeve BF. REM Sleep Behavior Disorder: Diagnosis, Clinical Implications, and Future Directions. _Mayo Clin Proc._ 2017;92(11):1723–1736.],
  [Iranzo A et al. Neurodegenerative disease status and post-mortem pathology in idiopathic rapid-eye-movement sleep behaviour disorder: an observational cohort study. _Lancet Neurol._ 2013;12(5):443–453.],
  [McCarter SJ et al. Treatment outcomes in REM sleep behavior disorder. _Sleep Med._ 2013;14(3):237–242.],
  [Högl B et al. Idiopathic REM sleep behaviour disorder and neurodegeneration — an update. _Nat Rev Neurol._ 2018;14(1):40–55.],
  [Li SX et al. Validation of a new REM sleep behavior disorder questionnaire (RBDQ-HK). _Sleep Med._ 2010;11(1):43–48.],
  [Howell M et al. Management of REM sleep behavior disorder: an American Academy of Sleep Medicine clinical practice guideline. _J Clin Sleep Med._ 2023;19(4):759–768.],
))

#chapter-summary(
  title: "9. Poremećaj ponašanja u REM spavanju (RBD)",
  category: "Parasomnije",
  color: cat-parasomnia,
  prepoznaj: [Partner: udaranje, vikanje, padanje iz kreveta. Druga polovica noći. Sjećanje na san. Dob >50 g. >80% razvije PD/DLB/MSA.],
  ucini: [RBDSQ (≥5 = pozitivan). ODMAH sigurnost spavaće sobe. Melatonin 3–12 mg. Revizija lijekova (SSRI/SNRI).],
  uputi: [SVE sumnje → neurolog. HITNO: rani parkinsonizam, kognitivni pad, teške ozljede.],
  drugs: (
    ([Melatonin], [3–12 mg navečer], [✓]),
    ([Klonazepam], [0,25–2 mg (2. linija)], [✓]),
  ),
  red-flags: (
    [Dob >50 + novo izvođenje snova — visoka vjerojatnost prodroma neurodegeneracije],
    [Rani parkinsonizam uz RBD — fenokonverzija u tijeku, HITNO neurologu],
    [Anosmija + RBD — gotovo patognomonično za prodrom PD],
  ),
)


// ============================================================================
// Poglavlje 10: Centralni poremećaji hipersomnolencije
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 10,
  title: "Centralni poremećaji hipersomnolencije",
  mkb: "G47.41 / G47.42 / G47.1",
  icsd: "Narcolepsy Type 1/2 and Idiopathic Hypersomnia",
  color: cat-hypersomnia,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Sara, 22 g.*, studentica, zaspi na predavanjima, za volanom, u razgovoru. Spava 9–10 h i nikad se ne osjeća odmornom. Na pitanje „Osjećate li slabost u mišićima kad se smijete?“ — „Da! Koljena mi klecnu.“ Simptomi od 16. godine. Šest godina i pet specijalista — nitko nije pitao o slabosti u mišićima.]
)
#v(3pt)
#text(size: 7.5pt, fill: color-gray, style: "italic")[Ovo poglavlje pokriva: narkolepsiju tip 1 i 2 te idiopatsku hipersomniju (IH).]
#v(2pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [EDS >3 mj. bez očitog uzroka. Katapleksija (slabost na emociju) = NT1. Teška inercija spavanja + neosvježavajući drijemovi = IH. Dijagnoza kasni 8–15 god.!],
    [*Učini*], [ESS upitnik. Isključi nedovoljan san (2 tj. produženog sna). NE započinjati stimulanse! Razgovor o sigurnosti vožnje.],
    [*Uputi*], [Svaka sumnja → neurolog / centar za spavanje (MSLT). HITNO: katapleksija s padovima, pospanost za volanom.],
  )
]

#v(4pt)
#kljucna-poruka[
  + *Narkolepsija je neurološka bolest, ne lijenost.* Kašnjenje dijagnoze: 8–15 godina — LOM može skratiti to razdoblje postavljanjem pravih pitanja.
  + *Katapleksija je patognomonična za tip 1.* Pitajte svakoga s kroničnim EDS-om: „Slabost u mišićima kad se smijete?“
  + *Probir je jednostavan:* ESS ≥10 + ciljana pitanja o katapleksiji. Dijagnozu postavlja specijalist (PSG + MSLT).
  + *Sigurnost vožnje je imperativ.* Obavezno pitajte, savjetujte prestanak i dokumentirajte.
  + *Ne liječite narkolepsiju u PZZ.* Uputite specijalistu. Do pregleda: planirani kratki drijemeži, redovit san, bez alkohola.
  + *IH = inercija spavanja + neosvježavajući drijemovi.* Isključite nedovoljan san (2 tj. produženog sna). Uputite specijalistu.
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [„Zaspite li u situacijama u kojima većina ne bi?“], [Neodoljivi napadaji sna = kardinalni simptom],
    [„Imate li iznenadnu slabost kad se smijete?“], [Katapleksija = patognomonično za narkolepsiju tip 1],
    [„Osvježe li vas kratki drijemeži od 15–20 min?“], [DA = narkolepsija; NE = idiopatska hipersomnija],
    [„Koliko vam treba da se potpuno probudite?“], [>30 min + konfuzija = inercija spavanja → IH],
    [„Imate li zastrašujuće halucinacije pri zaspiavanju?“], [Hipnagogičke halucinacije → narkolepsija],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

Narkolepsija je kronična neurološka bolest — nemogućnost mozga da regulira ciklus budnost-spavanje; tip 1 nastaje zbog gubitka hipokretinskih neurona. Prevalencija: 1 na 2.000–5.000; kašnjenje dijagnoze 8–15 godina. U praksi s 2.000 pacijenata: 1–2 bolesnika.

*Kritični znakovi:*
- *EDS >3 mjeseca* — neodoljivi napadaji sna u neprimjerenim situacijama (razgovor, obrok, vožnja)
- *Katapleksija* — iznenadna slabost mišića potaknuta emocijama (smijeh, iznenađenje). *Patognomonično za tip 1.* Parcijalna (pad čeljusti, klonulost glave, podkošavanje koljena) mnogo češća od potpunog kolapsa
- *„Sleep attacks“* — neodoljivo usrednji razgovora, za volanom

*Podržavajući znakovi:*
- *Paraliza sna* — nemogućnost kretanja pri buđenju/uspavljivanju, očuvana svijest
- *Hipnagogičke halucinacije* — živopisne slike, nerijetko pogrešno protumačene kao psihijatrijski simptom
- *Fragmentiran noćni san* — paradoks: pospani danju, ne spavaju dobro noću
- *Automatsko ponašanje* — nastavak radnji u polubundovnom stanju

*Pitanja za anamnezu:*
+ „Zaspite li u situacijama u kojima većina ne bi?“ — razgovor, obrok, vožnja
+ *„Imate li iznenadnu slabost — pad čeljusti, klonulost glave, podkošavanje koljena — kad se smijete?“* — ključno pitanje za katapleksiju!
+ „Osvježe li vas kratki drijemeži od 15–20 minuta?“ — DA = tipično za narkolepsiju
+ „Imate li zastrašujuće halucinacije pri zaspiavanju/buđenju?“
+ „Jeste li se ikada probudili i niste se mogli pomaknuti?“

*Diferencijalni tragovi:*
- *OSA* — pospanost se poboljšava s CPAP-om; hrkanje dominira
- *Nedovoljan san* — poboljšanje nakon produženja na 8–9 h × 2 tjedna
- *Depresija* — umor (ne pospanost); nema katapleksije; anhedonija
- *Idiopatska hipersomnija* — nema katapleksije, san ne osvježava, izražena inercija spavanja

// === Probir i dijagnostika ===
== Probir i dijagnostika

*Epworthova ljestvica pospanosti (ESS)* #see(<upitnik-ess>) — ESS ≥10 = prekomjerna pospanost; ESS ≥16 = teška (čest nalaz kod narkolepsije). Brz (2–3 min), validiran na hrvatskom.

*Ciljna anamneza — isključiti druge uzroke:*
- Nedovoljan san (najčešći uzrok EDS-a!) → dnevnik spavanja 2 tjedna
- OSA → STOP-BANG upitnik
- Depresija → PHQ-9
- Hipotireoza → TSH
- Lijekovi koji uzrokuju pospanost

*Dijagnozu narkolepsije MORA postaviti specijalist* na temelju PSG + MSLT (test multiplih latencija spavanja) ili hipokretina-1 u likvoru.

#pearl[Pitanje o katapleksiji je *najvažnije pitanje koje LOM može postaviti*. Većina bolesnika nikad nije upitana jer ne znaju da je to simptom.]

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  *Unutar tjedan dana:* Neliječena narkolepsija = *3–7× veći rizik* prometne nesreće — sigurnosna procjena obavezna

  - *Pospanost za volanom* — obavezno pitajte i dokumentirajte. Savjetujte prestanak vožnje do dijagnoze i liječenja
  - *Katapleksija s padovima* — rizik prijeloma, ozljeda glave
  - *Porast tjelesne težine* — čest kod tipa 1; može maskirati prezentaciju usmjeravajući prema OSA
  - *Djeca/adolescenti s naglom pospanošću* — pad školskog uspjeha, naglo debljanje → neuropedijatar
  - *Depresija/anksioznost* — prisutne kod 30–50% bolesnika; mogu maskirati narkolepsiju
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== Nefarmakološke mjere — što LOM MOŽE savjetovati

+ *Redoviti raspored spavanja* — isti sat lijeganja/ustajanja svaki dan
+ *Planirani kratki drijemeži* — 1–2 × dnevno po *15–20 min*, sredinom jutra i rano poslijepodne — jedna od najučinkovitijih nefarmakoloških intervencija
+ *Izbjegavanje alkohola* — pogoršava EDS i fragmentira noćni san
+ *Izbjegavanje teških obroka* — posebno kad je pospanost najizraženija
+ *Edukacija pacijenta i obitelji* — kronična neurološka bolest, NIJE lijenost

=== Razgovor o sigurnosti vožnje — OBAVEZAN

Pitajte svakoga s EDS-om: „Vozite li? Jeste li ikad zaspali za volanom?“ Savjetujte *prestanak vožnje* do dijagnoze i liječenja. *Dokumentirajte razgovor.*

=== Specijalistička farmakoterapija (informativno)

*Farmakoterapiju vodi specijalist.* LOM-ova uloga: prepoznati sumnju, uputiti, pratiti nuspojave.

*Za narkolepsiju:* modafinil (prva linija za EDS, ○ u HR), Na-oksibutirat (Xyrem; EDS + katapleksija, ✗ u HR), pitolisant (Wakix, ○), venlafaksin (antikataplektik, ✓), metilfenidat (druga linija, ✓).

*Za IH:* modafinil (često slabiji učinak nego kod narkolepsije), Na-oksibutirat/Xywav (jedini odobreni za IH, ✗ u HR).

#pearl[*NE inicirati stimulanse bez dijagnoze!* Stimulansi bez MSLT-a maskiraju simptome i otežavaju dijagnostiku.]

=== Idiopatska hipersomnija (IH)

IH je poremećaj centralne hipersomnolencije s *kroničnom EDS-om* unatoč adekvatnom snu. Nema katapleksije.

*Kardinalni simptom:* *Inercija spavanja ("pijanstvo sna")* — teška konfuzija 30–60+ min po buđenju, višestruki alarmi, obitelj: „Kao da budi nekoga pod anestezijom.“

*Razlikovanje od narkolepsije:*
- *Kratki drijemeži:* narkolepsija = osvježavajući; IH = neosvježavajući
- *Ukupan san:* narkolepsija = normalan; IH = često >11 h
- *Katapleksija:* narkolepsija tip 1 = da; IH = ne

*Ključni dijagnostički korak u PZZ:* Dati pacijentu instrukciju da *2 tjedna spava bez alarma (≥9–10 h)*. Ako se EDS potpuno povuče → nedovoljan san, ne IH. Ako perzistira → uputiti specijalistu.

#pearl[Pitanje o inerciji spavanja je *najspecifičniji trag za IH* — „Koliko vam treba da se potpuno probudite?“ >30 min uz konfuziju snažno upućuje na IH.]

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
  [*Do upute*], [ESS, isključiti druge uzroke, savjetovati nefarmakološke mjere],
  [*Nakon spec. dg.*], [Ponoviti ESS svaka 3–6 mj. Pratiti nuspojave spec. lijekova],
  [*Trajno*], [Sigurnost vožnje. Psihosocijalna podrška. Komorbidna depresija?],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [Kronični EDS + ESS ≥10 bez očitog uzroka], [Neurolog / Centar za spavanje], [PSG + MSLT za dijagnozu],
  [Ikakav opis katapleksije], [Neurolog — *hitno*], [Patognomonično za NT1],
  [Mladi pacijent (\< 30 g.) s EDS-om iz adolescencije], [Neurolog / Centar za spavanje], [Klasična dob prezentacije],
  [Dijete s naglom pospanošću + debljanjem + pad uspjeha], [Neuropedijatar — *hitno*], [Mogući akutni početak NT1],
  [Pogoršanje simptoma ili nuspojave spec. lijekova], [Neurolog koji vodi pacijenta], [Titracija zahtijeva specijalista],
  [Kronična EDS + teška inercija spavanja,\ isključen nedovoljan san], [Centar za spavanje], [PSG + MSLT; visoka sumnja na IH],
))

#text(size: 8pt, fill: color-gray)[*HR centri:* KBC Zagreb (Centar za poremećaje spavanja), KBC Rijeka, KBC Split, privatni centri.]

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [„Samo je lijen/a — neka spava više“], [Narkolepsija je neurološka bolest — gubitak hipokretinskih neurona, ne lijenost],
  [Dijagnoza depresije umjesto narkolepsije], [EDS + katapleksija ≠ depresija. Uvijek ciljano pitajte o katapleksiji],
  [Propisati stimulanse bez dijagnoze], [Potreban PSG + MSLT. Simptomatsko liječenje odgađa ispravnu dijagnozu],
  [Ne pitati o vožnji], [Pospanost za volanom je smrtno opasna. Obavezan razgovor i dokumentacija],
  [Čekati „klasičnu“ pentadu], [Parcijalna katapleksija je mnogo češća. Pentadu ima tek 10–15%],
  [Protumačiti katapleksiju kao epilepsiju], [Katapleksija: svijest očuvana, nema postiktalne konfuzije, okidač su pozitivne emocije],
  [OSA isključuje narkolepsiju], [Mogu koegzistirati. Ako EDS perzistira unatoč CPAP-u → razmisliti o narkolepsiji],
  [Reći pacijentu s IH da je „lijen“], [IH je neurobiološki poremećaj — spava više, budi se gore],
  [Ne pitati za inerciju spavanja], [Najspecifičniji simptom IH — bez ciljane anamneze neće biti prepoznat],
))

#literatura((
  [Maski K et al. Treatment of Central Disorders of Hypersomnolence: An American Academy of Sleep Medicine Clinical Practice Guideline. _J Clin Sleep Med._ 2021;17(9):1881–1893.],
  [Bassetti CLA et al. Narcolepsy — clinical spectrum, aetiopathophysiology, diagnosis and treatment. _Nat Rev Neurol._ 2019;15(9):519–539.],
  [Dauvilliers Y et al. Narcolepsy and other central hypersomnias. _Continuum (Minneap Minn)._ 2013;19(1):86–105.],
  [Pizza F et al. Clinical and polysomnographic course of childhood narcolepsy with cataplexy. _Brain._ 2013;136(12):3787–3795.],
  [Trotti LM. Idiopathic Hypersomnia. _Sleep Med Clin._ 2017;12(3):331–344.],
  [Thorpy MJ et al. A Randomized Study of Solriamfetol for Excessive Sleepiness in Narcolepsy. _Ann Neurol._ 2019;85(3):359–370.],
))

#chapter-summary(
  title: "10. Centralni poremećaji hipersomnolencije",
  category: "Hipersomnolencija",
  color: cat-hypersomnia,
  prepoznaj: [EDS >3 mj. bez očitog uzroka. Katapleksija = NT1. Inercija spavanja + neosvježavajući drijemovi = IH. Dijagnoza kasni 8–15 god.],
  ucini: [ESS upitnik. Pitajte o katapleksiji. Isključite nedovoljan san (2 tj. produženog sna). Sigurnost vožnje.],
  uputi: [Svaka sumnja na narkolepsiju/IH → neurolog / centar za spavanje. HITNO: katapleksija s padovima.],
  drugs: (
    ([Modafinil], [100–400 mg (specijalist)], [○]),
    ([Venlafaksin], [Antikataplektik], [✓]),
    ([Pitolisant], [Wakix (specijalist)], [○]),
  ),
  red-flags: (
    [Pospanost za volanom — 3–7× veći rizik prometne nesreće],
    [Katapleksija s padovima — rizik prijeloma, ozljede glave],
    [Dijete s naglom pospanošću + debljanjem — mogući akutni početak NT1],
  ),
)


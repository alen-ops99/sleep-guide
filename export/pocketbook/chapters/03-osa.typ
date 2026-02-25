// ============================================================================
// Poglavlje 3: Opstruktivna i centralna apneja u snu
// ============================================================================

#import "../template.typ": *

#chapter-title(
  number: 3,
  title: "Opstruktivna i centralna apneja u snu",
  mkb: "G47.3 / G47.31",
  icsd: "Obstructive Sleep Apnea (adult) / Central Sleep Apnea Syndromes",
  color: cat-breathing,
)

#block(
  width: 100%,
  inset: (x: 8pt, y: 6pt),
  radius: 2pt,
  fill: color-gray-bg,
  stroke: (left: 2pt + color-gray),
  text(size: 8pt, style: "italic")[*Ivan, 55 g.*, dolazi na kontrolu hipertenzije — 3 antihipertenziva, RR i dalje 155/95. Supruga kaže da „hrče kao traktor i prestaje disati". BMI 33. Umoran je, ali „to je normalno u mojim godinama." STOP-BANG 6/8.]
)
#v(3pt)

#brzi-pregled[
  #set text(size: 8.5pt)
  #table(
    columns: (auto, 1fr),
    inset: (x: 4pt, y: 3pt),
    stroke: none,
    [*Prepoznaj*], [Hrkanje + svjedočeni apneički zastoji + dnevna pospanost. Žene: nesanica, umor, depresija (atipično!). Rezistentna hipertenzija.],
    [*Učini*], [STOP-BANG (≥3 = uputiti). Opseg vrata (>40 cm). ESS. Pitaj partnera o apnejama.],
    [*Uputi*], [STOP-BANG ≥3 → pulmolog / centar za spavanje. HITNO: pospanost za volanom, profesionalni vozači, noćne aritmije. CSA: sumnja kod HF/opioida → PSG (ne HSAT!).],
  )
]

#v(4pt)
#kljucna-poruka[
  + *OSA je dramatično poddijagnosticirana* -- osobito kod žena (nesanica, umor, depresija). Aktivno pitajte i kod „atipičnog" profila.
  + *STOP-BANG ≥3 uz kliničku sumnju = uputnica za sleep studiju.* Ne čekajte -- svaki mjesec neliječene teške OSA-e je mjesec KV oštećenja.
  + *Rezistentna hipertenzija = probir na OSA-u.* Najčešći sekundarni uzrok.
  + *LOM je ključan za CPAP adherenciju.* Pitajte na svakoj kontroli, identificirajte barijere.
  + *Nikada sedative bez isključenja OSA-e.* BZD i opioidi pogoršavaju apneje i suzbijaju zaštitno buđenje.
]

#v(4pt)
#pitanja-box[
  #pitanja-table((
    [„Hrčete li?" (pitajte i partnera!)], [Glasno, iregularno hrkanje → visoka sumnja na OSA],
    [„Je li vam itko rekao da prestajete disati u snu?"], [Svjedočene apneje = gotovo patognomonično],
    [„Osjećate li se odmorni ujutro?"], [Neosvježavajući san unatoč dovoljnom trajanju → OSA],
    [„Zasipate li nenamjerno — za volanom, čitajući?"], [Pozitivno = sigurnosno kritično → hitna obrada],
    [„Budite li se noću na mokrenje više od jednom?"], [Nokturija ≥2× = čest, podcijenjen simptom OSA-e],
  ))
]

// === Kako prepoznati? ===
== Kako prepoznati?

OSA je poremećaj disanja u snu s ponavljanim epizodama kolapsa gornjeg dišnog puta, mjereno apneja-hipopneja indeksom (AHI). Prevalencija: u praksi s 2.000 pacijenata: 150–400 odraslih ima klinički značajnu OSA-u.

*Klasična prezentacija* (češće muškarci):
- Glasno, iregularno hrkanje s pauzama u disanju
- *Apneje uočene od partnera* (patognomonično)
- Pretjerana dnevna pospanost (zaspe za volanom, na sastanku)
- Nokturija (≥2×/noć), jutarnje glavobolje, suhoća usta

*Atipična prezentacija* (češće žene) -- KLJUČNO:
- *Nesanica* (otežano održavanje sna), kronični umor
- *Depresija i anksioznost* refrakterni na terapiju
- Jutarnje glavobolje, kognitivni deficit ("brain fog")

#pearl[Žene s OSA-om prosječno posjete 3--5 specijalista prije dijagnoze. Žena s rezistentnom nesanicom, neobjašnjenim umorom ili refraktornom depresijom -- razmislite o OSA-i.]

#pearl[*Trudnoća:* OSA u trudnoći povećava rizik gestacijske hipertenzije i preeklampsije — probir kod trudnica s BMI >30, kroničnim hrkanjem ili hipertenzijom u trudnoći.]

*Pitanja za ordinaciju:*
+ „Hrčete li?" (pitajte i partnera!)
+ „Je li vam itko rekao da prestajete disati u snu?"
+ „Osjećate li se odmorni ujutro?"
+ „Zasipate li nenamjerno tijekom dana -- za volanom, čitajući?"
+ „Budite li se noću na mokrenje više od jednom?"

// === Probir i dijagnostika ===
== Probir i dijagnostika

<stop-bang-upitnik>
=== STOP-BANG upitnik

#set text(size: 8.5pt)
#table(
  columns: (0.4fr, 1.5fr, 0.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Slovo],
    text(weight: "bold")[Pitanje],
    text(weight: "bold")[Poz. ako],
  ),
  [*S*], [Hrčete li glasno?], [Da],
  [*T*], [Osjećate li se umorno/pospano?], [Da],
  [*O*], [Primijećeni prestanci disanja?], [Da],
  [*P*], [Liječite li hipertenziju?], [Da],
  [*B*], [BMI >35?], [Da],
  [*A*], [Dob >50 godina?], [Da],
  [*N*], [Opseg vrata >40 cm?], [Da],
  [*G*], [Muški spol?], [Da],
)

*Interpretacija:* 0--2 = niski rizik; *3--4 = intermedijarni → uputiti*; *≥5 = visoki → hitno uputiti*.

#text(size: 8pt, fill: color-gray)[STOP-BANG ima nižu osjetljivost kod žena (2 boda inherentno pristrana). Kod žena s rezultatom 2--3 i kliničkom sumnjom -- ipak uputite.]

*ESS* (v. poglavlje 1, str. #context { let loc = query(<ess-tablica>).first().location(); str(counter(page).at(loc).first()) }) — normalno 0–10; patološki ≥11. Normalan ESS ne isključuje OSA-u.

*Što LOM može:* STOP-BANG + ESS, opseg vrata, orofarinks (Mallampati III--IV), noćna pulsna oksimetrija (ako dostupna), laboratorij (KKS, GUK/HbA1c, lipidogram, TSH).

=== Klasifikacija težine (AHI)

#set text(size: 8.5pt)
#table(
  columns: (1fr, 1fr, 1.5fr),
  inset: 5pt,
  fill: (_, row) => if row == 0 { color-teal.lighten(85%) } else if calc.rem(row, 2) == 0 { color-gray-bg } else { white },
  table.header(
    text(weight: "bold")[Stupanj],
    text(weight: "bold")[AHI (dog./sat)],
    text(weight: "bold")[Klinički značaj],
  ),
  [Normalno], [\< 5], [--],
  [*Blaga*], [*5--14*], [Simptomatska terapija; pratiti KV rizik],
  [*Umjerena*], [*15--29*], [Indikacija za CPAP ili MAD],
  [*Teška*], [*≥30*], [CPAP obavezan; visoki KV rizik],
)

*PSG* -- zlatni standard. *HSAT* (kućna studija) -- prikladna za visoku pretestnu vjerojatnost bez značajnog komorbiditeta.

// === Crvene zastavice ===
#v(3pt)
#crvena-zastavica[
  *Rezistentna hipertenzija* (≥3 antihipertenziva) → OSA u 70--83%; liječenje može omogućiti kontrolu tlaka

  - *Pospanost za volanom / profesionalni vozači* → sigurnosno-kritično, zabraniti vožnju do obrade
  - *Uočene apneje s cijanozom ili gušenjem* → teška OSA (AHI često ≥30)
  - *SpO₂ \< 80%* → rizik aritmije, plućne hipertenzije, cor pulmonale
  - *Noćne aritmije* (AF, bradikardije, AV blokovi) → kardiološka + somnološka obrada paralelno
]

// === Liječenje u PZZ ===
== Liječenje u PZZ

=== Nefarmakološke mjere (LOM vodi)

- *Redukcija TM:* Smanjenje za 10% može reducirati AHI za 26--50%. Za BMI >30 + OSA: prvi korak uz CPAP
- *Pozicijska terapija:* Za supinacijsku OSA-u (teniska loptica, pozicijski pojas) -- rijetko dovoljna kao monoterapija
- *Izbjegavati alkohol 3--4 h prije spavanja* (pogoršava AHI za 25--50%)
- *Izbjegavati sedative i hipnotike* -- osobito BZD i opioide
- *Nazalni kortikosteroidi* ako postoji kronična nazalna opstrukcija
- *Liječiti komorbiditete:* hipotireoza (TSH), alergijski rinitis, GERB

=== CPAP -- podrška adherenciji (kritična uloga LOM-a)

CPAP je zlatni standard za umjerenu i tešku OSA-u. Pulmolog propisuje, ali *LOM je ključan za adherenciju* (30--50% prestane unutar 1 godine).

- Pitati na *svakoj kontroli:* „Koristite li CPAP svaku noć? Koliko sati?" (cilj: ≥4 h/noć, ≥70% noći)
- Identificirati barijere: suhoća nosa → grijani ovlaživač; klaustrofobija → promjena maske
- Značajno mršavljenje → retitracija CPAP-a

=== Oralni uređaj (MAD)

Alternativa za *blagu do umjerenu OSA-u* ili CPAP netoleranciju. Propisuje stomatolog educiran u dentalnoj medicini spavanja. Manje učinkovit od CPAP-a, ali bolja adherencija. Kontrolna sleep studija nakon prilagodbe obavezna.

=== COMISA

COMISA pogađa *30--50% pacijenata s OSA-om*. Liječiti *oboje istovremeno* -- CBT-I za nesanicu + CPAP za OSA-u. CBT-I *prije* CPAP-a može poboljšati adherenciju. *Izbjegavati hipnotike* jer pogoršavaju OSA-u.

// === Centralna apneja u snu (CSA) ===
=== Centralna apneja u snu (CSA)

CSA nastaje zbog *smanjenog ili odsutnog respiratornog napora* — mozak prestaje slati signal dišnoj muskulaturi. Za razliku od OSA (fizička blokada uz napor), kod CSA *nema napora za disanje*.

*Kada posumnjati:*
- *Srčano zatajenje (HFrEF, EF \< 45%)* — Cheyne-Stokesovo disanje prisutno u 30–50%
- *Kronična opioidna terapija* (morfij, oksikodon, metadon) — osobito ≥100 mg/dan MED
- *Preboljeli moždani udar* — 10–25% akutnih CVI-a
- Partner opisuje *tihe pauze u disanju* (manje hrkanja nego kod OSA)
- Pacijent se tuži na *nesanicu i noćnu dispneju* više nego na pospanost

*HSAT (kućna studija) NE MOŽE pouzdano detektirati centralne apneje* — potrebna je *PSG u laboratoriju*.

*Uloga LOM-a:* (1) Identificirati rizične pacijente (HF, opioidi, CVI). (2) Optimizirati liječenje srčanog zatajenja — to može eliminirati CSA. (3) Uputiti na PSG u laboratoriju.

#pearl[*ASV je KONTRAINDICIRAN kod HFrEF (EF ≤45%).* Studija SERVE-HF pokazala povećanu smrtnost. Ako pacijent s HFrEF koristi ASV → hitno kontaktirati kardiologa i pulmologa.]

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
  [*1 mjesec*], [CPAP adherencija? Barijere? ESS ponovo.],
  [*3 mjeseca*], [Ponoviti ESS, krvni tlak. Gubitak TM? Retitracija?],
  [*6--12 mj.*], [ESS, KV rizik, CPAP podaci. Značajan gubitak TM → ponoviti sleep studiju.],
  [*Godišnje*], [Praćenje KV komorbiditeta, CPAP adherencija, TM.],
)

// === Kada uputiti ===
== Kada uputiti specijalistu?

#referral-table((
  [STOP-BANG ≥3 uz simptome], [Pulmolog / ORL], [Sleep studija],
  [STOP-BANG ≥5], [Pulmolog], [*Hitna* sleep studija],
  [Rezistentna hipertenzija], [Pulmolog + kardiolog], [OSA najčešći sekund. uzrok],
  [Pospanost za volanom / prof. vozač], [Pulmolog], [*Hitno* -- sigurnosno-kritično],
  [Noćne aritmije], [Kardiolog + pulmolog], [Paralelna obrada],
  [Sumnja na OSA kod žene], [Pulmolog], [Naglasiti sumnju u uputnici],
  [Neuspjeh/netolerancija CPAP-a], [Pulmolog / ORL], [MAD ili kirurgija],
  [Sumnja na CSA\ (HF, opioidi, CVI)], [Pulmolog + kardiolog →\ *PSG* (ne HSAT!)], [Centralne apneje;\ optimizacija osnovne bolesti],
  [Pac. s HFrEF koji koristi ASV], [Kardiolog + pulmolog], [*HITNO* — kontraindicirano\ (SERVE-HF)],
))

// === Česte zamke ===
== Česte zamke

#zamka-table((
  [„Ne hrče → nema OSA-u"], [Žene često ne hrču. Koristite STOP-BANG, pitajte za umor, nesanicu, nokturiju],
  [„Normalan ESS → nema OSA-u"], [ESS mjeri pospanost, ne umor. Žene i stariji -- normalan ESS uz tešku OSA-u],
  [„Mršav/mlad → ne može imati OSA-u"], [Kraniofacijalna anatomija jednako važna kao BMI],
  [BZD za „nesanicu" bez isključenja OSA-e], [Potencijalno fatalno -- sedativi pogoršavaju apneje],
  [Liječenje samo hipertenzije bez probira], [OSA najčešći sekund. uzrok rezistentne HTN],
  [CPAP bez praćenja adherencije], [CPAP bez praćenja = CPAP u ladici],
  [Neprepoznavanje COMISA-e], [„Ne može spavati" + „ne podnosi CPAP" → CBT-I paralelno],
))


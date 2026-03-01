// ============================================================================
// Dodatak G — Letci za pacijente (10 jednostraničnih letaka)
// ============================================================================

#import "../template.typ": *

#appendix-title(letter: "G", title: "Letci za pacijente")

#text(size: 8pt, fill: color-gray, style: "italic")[
  Ovih 10 letaka pokrivaju najčešće poremećaje spavanja. Svaki letak osmišljen je kao jednostranični ispis
  koji liječnik može dati pacijentu. Jezik je prilagođen pacijentima — bez stručnog žargona.
]

// ────────────────────────────────────────────────────────────────────────────
// Helper: Handout page layout
// ────────────────────────────────────────────────────────────────────────────
#let handout-section(title: "", color: color-teal, icon: "", body) = {
  block(
    breakable: false,
    width: 100%,
    inset: (left: 8pt, right: 6pt, y: 4pt),
    radius: 2pt,
    stroke: (left: 2.5pt + color),
    [
      #text(weight: "bold", fill: color, size: 9pt)[#icon #title]
      #v(1pt)
      #set text(size: 8pt)
      #set par(leading: 0.5em)
      #body
    ]
  )
}

#let handout-footer = {
  v(1fr)
  line(length: 100%, stroke: 0.3pt + color-gray.lighten(50%))
  v(2pt)
  text(size: 6.5pt, fill: color-gray, style: "italic")[
    Generirano iz: Vodič za poremećaje spavanja u PZZ, 2026. | Ovo NIJE dijagnoza — posavjetujte se s liječnikom.
  ]
}

#let handout-header(title: "", color: color-teal) = {
  block(
    width: 100%,
    inset: (x: 10pt, y: 7pt),
    fill: color,
    radius: 3pt,
    [
      #text(weight: "bold", fill: white, size: 12pt)[#title]
      #h(1fr)
      #text(fill: white.transparentize(40%), size: 7pt)[LETAK ZA PACIJENTA]
    ]
  )
}

// ════════════════════════════════════════════════════════════════════════════
// 1. NESANICA
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Nesanica", color: cat-insomnia)
  #v(3pt)

  #handout-section(title: "Što je nesanica?", color: cat-insomnia, icon: "▸")[
    Nesanica je poteškoća s usnivanjem ili održavanjem sna koja traje barem 3 mjeseca i utječe na vaše dnevno funkcioniranje. To znači da se osjećate umorno, razdražljivo ili imate problema s koncentracijom tijekom dana — ne zato što ne želite spavati, nego jer ne možete.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-insomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Dugo usnivanje (više od 30 minuta)
    - Česta buđenja tijekom noći
    - Rano jutarnje buđenje bez mogućnosti ponovnog zaspivanja
    - Umor i razdražljivost danju
    - Teškoće s koncentracijom i pamćenjem
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-insomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Držite redovit raspored: ista ura lijeganja i buđenja svaki dan
    - Koristite krevet samo za spavanje (ne za gledanje televizije ili mobitela)
    - Izbjegavajte ekrane (mobitel, tablet, TV) najmanje 1 sat prije spavanja
    - Ne pijte kavu, čaj ili energetska pića nakon 14 sati
    - Vježbajte umjereno danju, ali ne neposredno prije spavanja
    - Ako ne zaspite za 20 minuta — ustanite i radite nešto mirno dok ne osjetite pospanost
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-insomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Povišen rizik za depresiju i anksioznost
    - Smanjena produktivnost na poslu i u svakodnevnom životu
    - Oslabljen imunitet — češće bolesti
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-insomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako tegobe traju dulje od 3 mjeseca
    - Ako uzimate tablete za spavanje dulje od 2 tjedna
    - Ako imate i druge simptome (hrkanje, nemir u nogama)
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 2. NEDOVOLJAN SAN
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Nedovoljan san", color: cat-hypersomnia)
  #v(3pt)

  #handout-section(title: "Što je nedovoljan san?", color: cat-hypersomnia, icon: "▸")[
    Kronično spavanje manje od 7 sati na noć najčešći je uzrok dnevne pospanosti. Nije bolest u klasičnom smislu — ali ima ozbiljne zdravstvene posljedice. Mnogi ljudi niti ne znaju da spavaju premalo jer su se „navikli" na umor.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Pospanost danju, osobito nakon ručka
    - Otežana koncentracija i pamćenje
    - Razdražljivost i promjene raspoloženja
    - Potreba za alarmom za buđenje (ne budite se prirodno)
    - Nadoknadni dugačak san vikendom (više od 2 sata razlike)
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Cilj: 7–9 sati sna svake noći
    - Držite fiksnu uru buđenja — i radnim danima i vikendom
    - Izbjegavajte veliki raskorak u rasporedu spavanja između radnih dana i vikenda
    - Ograničite kofein na jutarnje sate
    - Shvatite san jednako ozbiljno kao prehranu i tjelovježbu
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Povišen rizik za pretilost i dijabetes
    - Kardiovaskularne bolesti (visok krvni tlak, srčani udar)
    - Oslabljena reakcija za volanom — rizik od prometne nesreće
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako ste pospanost unatoč 7 ili više sati sna svake noći
    - Ako imate teškoće s budnošću za volanom
    - Ako pospanost utječe na vaš posao ili svakodnevni život
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 3. OPSTRUKTIVNA APNEJA U SNU
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Opstruktivna apneja u snu", color: cat-breathing)
  #v(3pt)

  #handout-section(title: "Što je opstruktivna apneja u snu?", color: cat-breathing, icon: "▸")[
    Apneja u snu znači da vam se dišni put u grlu zatvara tijekom spavanja, pa kratkotrajno prestajete disati. To se ponavlja mnogo puta kroz noć, a vi toga najčešće niste svjesni. Često je povezana s glasnim hrkanjem.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-breathing, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Glasno i neredovito hrkanje
    - Prestanci disanja koje primijeti partner
    - Suho grlo i suha usta ujutro
    - Jutarnja glavobolja
    - Izrazita pospanost danju
    - Česta potreba za mokrenjem noću
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-breathing, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Spavajte na boku, a ne na leđima
    - Smanjite tjelesnu težinu ako imate prekomjernu težinu
    - Izbjegavajte alkohol 3 sata prije spavanja
    - Ne uzimajte tablete za spavanje ili smirenje bez savjeta liječnika
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-breathing, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Visok krvni tlak koji ne reagira na lijekove
    - Srčani udar i moždani udar
    - Šećerna bolest (dijabetes)
    - Prometne nesreće zbog pospanosti
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-breathing, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako partner primijeti prestanke disanja u snu
    - Ako ste izrazito pospani danju unatoč dovoljnom snu
    - Ako imate visok krvni tlak, osobito ako je teško kontrolirati
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 4. CIRKADIJANI POREMEĆAJI
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Cirkadijani poremećaji (poremećaj biološkog sata)", color: cat-circadian)
  #v(3pt)

  #handout-section(title: "Što su cirkadijani poremećaji?", color: cat-circadian, icon: "▸")[
    Vaš biološki sat nije usklađen s rasporedom koji morate držati. Problem nije kvaliteta sna — vi spavate dobro kada spavate po svom prirodnom ritmu — nego je problem u tome što morate funkcionirati u vrijeme kada bi vaš organizam htio spavati.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-circadian, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ne možete zaspati do kasno u noć (ali kad nemate obaveza, spavate dobro)
    - Velike teškoće s buđenjem ujutro
    - Bolje funkcionirate navečer nego ujutro
    - Pospanost danju na radne dane, ali ne vikendom
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-circadian, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Jutarnje izlaganje jakoj (dnevnoj) svjetlosti — 30 minuta nakon buđenja
    - Izbjegavajte ekrane i jako svjetlo navečer
    - Melatonin 0,5–3 mg uzeti 4–5 sati prije željenog vremena spavanja (posavjetujte se s liječnikom)
    - Držite redovit raspored spavanja i vikendom
    - Postupno pomičite vrijeme lijeganja (15 minuta ranije svaki dan)
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-circadian, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Kronični nedostatak sna na radne dane
    - Smanjena produktivnost na poslu ili u školi
    - Povišen rizik za depresiju
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-circadian, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako ne uspijevate prilagoditi raspored ni nakon 4–6 tjedana gore navedenih mjera
    - Ako problem značajno utječe na posao ili školu
    - Ako radite noćne smjene i imate stalnu pospanost
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 5. SINDROM NEMIRNIH NOGU
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Sindrom nemirnih nogu", color: cat-movement)
  #v(3pt)

  #handout-section(title: "Što je sindrom nemirnih nogu?", color: cat-movement, icon: "▸")[
    Neugodan osjećaj u nogama — mravci, pečenje, svrbež ili nemir — koji se javlja navečer i u mirovanju. Jedino što pomaže jest pomicanje nogu. To otežava usnivanje i remeti san.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Neugodni osjećaji u nogama („mravci", pečenje, nemir) koji se javljaju navečer
    - Nagon za pomicanjem nogu koji donosi kratkotrajno olakšanje
    - Simptomi gori u mirovanju (ležanje, sjedenje)
    - Teškoće sa zaspivanjem
    - Nemiran san i česta buđenja
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Umjerena tjelovježba danju (šetnja, plivanje)
    - Izbjegavajte kofein (kava, čaj, kola, energetska pića)
    - Topla kupka ili tuš prije spavanja
    - Masaža nogu ili istezanje prije lijeganja
    - Provjerite razinu željeza u krvi kod liječnika
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Kronična nesanica i nedostatak sna
    - Umor i iscrpljenost danju
    - Depresija i smanjena kvaliteta života
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako simptomi ometaju san više od 2 puta tjedno
    - Ako uzimate lijekove koji bi mogli pogoršati simptome (lijekovi za alergije, neki antidepresivi)
    - Ako se simptomi pojave ili pogoršaju u trudnoći
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 6. NOĆNE MORE
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Noćne more", color: cat-parasomnia)
  #v(3pt)

  #handout-section(title: "Što su noćne more?", color: cat-parasomnia, icon: "▸")[
    Noćne more su uznemirujući, živi snovi koji vas bude i uzrokuju neugodu ili strah. Česte su kod osoba koje su proživjele traumatska iskustva, ali mogu se javiti i kod stresa ili nekih lijekova.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Buđenje iz sna u strahu ili nelagodi
    - Jasno sjećanje na sadržaj sna
    - Ubrzano srce i znojenje pri buđenju
    - Strah od ponovnog zaspivanja
    - Poremećaj sna i umor danju
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - IRT tehnika: danju zamislite drugačiji, pozitivan završetak noćne more i „uvježbajte" ga
    - Izbjegavajte alkohol i tešku hranu navečer
    - Relaksacijske tehnike prije spavanja (duboko disanje, progresivna relaksacija)
    - Držite redovit raspored spavanja
    - Izbjegavajte zastrašujuće sadržaje prije sna
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Pogoršana nesanica
    - Anksioznost i izbjegavanje spavanja
    - Kronični umor i smanjena kvaliteta života
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako su noćne more povezane s traumatskim iskustvom (PTSP)
    - Ako značajno ometaju san i dnevno funkcioniranje
    - Ako imate misli o samoozljeđivanju ili samopovređivanju
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 7. NREM PARASOMNIJE (hodanje u snu, noćni strahovi)
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Hodanje u snu i noćni strahovi", color: cat-parasomnia)
  #v(3pt)

  #handout-section(title: "Što su NREM parasomnije?", color: cat-parasomnia, icon: "▸")[
    Hodanje u snu, noćni strahovi ili zbunjeno buđenje — sve su to epizode u kojima ste djelomično budni, ali niste svjesni. Događaju se u prvoj trećini noći i obično se ne sjećate ničega. Česte su u djece, ali javljaju se i u odraslih.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Hodanje ili sjedanje u snu bez da ste svjesni
    - Vikanje, plakanje ili govorenje u snu
    - Zbunjeno ponašanje pri buđenju
    - Ne sjećate se epizoda ujutro
    - Oči mogu biti otvorene, ali pogled je prazan
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - SIGURNOST na prvom mjestu — zaključajte prozore i ulazna vrata
    - Uklonite opasne predmete iz spavaće sobe (oštre stvari, staklo)
    - Spavajte dovoljno — nedostatak sna je najčešći okidač!
    - Izbjegavajte alkohol
    - Ne pokušavajte nasilno buditi osobu tijekom epizode — nježno je preusmjerite natrag u krevet
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Rizik od ozljede (padovi, udarci)
    - Narušen san partnera i obitelji
    - Neugoda i sram u društvenim situacijama (npr. spavanje kod prijatelja)
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako se hodanje u snu prvi put javlja u odrasloj dobi
    - Ako dolazi do ozljeda vas ili ukućana
    - Ako su epizode česte (više od jednom tjedno)
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 8. BRUKSIZAM U SNU
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Bruksizam u snu (škrgutanje zubima)", color: cat-movement)
  #v(3pt)

  #handout-section(title: "Što je bruksizam u snu?", color: cat-movement, icon: "▸")[
    Bruksizam u snu znači škrgutanje ili stiskanje zuba tijekom spavanja, najčešće bez vaše svjesnosti. Često ga prvi primijeti partner koji čuje zvuk škrgutanja, ili stomatolog koji uoči istrošenu zubnu caklinu.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Bol ili ukočenost čeljusti ujutro
    - Istrošena zubna caklina ili pucanje zubi i ispuna
    - Glavobolja ujutro, osobito u sljepoočnicama
    - Partner čuje škrgutanje zubima noću
    - Osjetljivost zubi na hladno i toplo
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Smanjite razinu stresa (tehnike opuštanja, tjelovježba)
    - Izbjegavajte žvakaće gume — navikavaju čeljust na stiskanje
    - Opustite čeljust prije spavanja: usne zajedno, zubi razdvojeni
    - Posjetite stomatologa za zaštitnu udlagu (štitnik za zube)
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Trajno oštećenje zubi i zubne cakline
    - Bolovi u čeljustnom zglobu
    - Kronične glavobolje
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-movement, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ako imate značajno trošenje ili lomljenje zubi
    - Ako imate bolove u čeljusti koji ne prolaze
    - Ako uz bruksizam i hrčete — škrgutanje zubi često je znak apneje u snu
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 9. RBD — POREMEĆAJ PONAŠANJA U REM SNU
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Poremećaj ponašanja u REM snu (RBD)", color: cat-parasomnia)
  #v(3pt)

  #handout-section(title: "Što je poremećaj ponašanja u REM snu?", color: cat-parasomnia, icon: "▸")[
    Tijekom sanjanja, vaše tijelo bi trebalo biti potpuno mirno. Kod ovog poremećaja mišići ostaju aktivni pa izvodite pokrete iz snova — udarate, bacate se, vičete ili padate iz kreveta. Ovo je ozbiljan poremećaj koji zahtijeva medicinsku obradu.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Pokreti u snu — udaranje rukama ili nogama, bacanje
    - Vikanje, govorenje ili psovanje u snu
    - Padanje iz kreveta
    - Živopisni, uznemirujući snovi
    - Partner primjećuje neobično ponašanje u snu
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - SIGURNOST: spustite krevet na pod ili koristite niski krevet
    - Uklonite oštre predmete i namještaj s oštrim rubovima iz blizine kreveta
    - Postavite zaštitne ograde na krevet
    - Partner neka spava u odvojenoj postelji ako postoji rizik od ozljede
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Ozljede vas samih ili partnera
    - U osoba starijih od 50 godina, RBD može biti rani znak Parkinsonove bolesti
    - Narušen san i kvaliteta života
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-parasomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - ODMAH — svako izvođenje pokreta iz snova u osoba starijih od 50 godina zahtijeva neurološki pregled
    - Kod mlađih osoba — ako dolazi do ozljeda ili su epizode učestale
    - Ako uzimate antidepresive — oni mogu uzrokovati ili pogoršati ovo stanje
  ]

  #handout-footer
]

// ════════════════════════════════════════════════════════════════════════════
// 10. NARKOLEPSIJA I IDIOPATSKA HIPERSOMNIJA
// ════════════════════════════════════════════════════════════════════════════
#page(header: none)[
  #handout-header(title: "Narkolepsija i idiopatska hipersomnija", color: cat-hypersomnia)
  #v(3pt)

  #handout-section(title: "Što su narkolepsija i idiopatska hipersomnija?", color: cat-hypersomnia, icon: "▸")[
    Rijetki poremećaji s izrazitom pospanosti danju, unatoč tome što spavate dovoljno. Narkolepsija može uključivati katapleksiju — iznenadnu mišićnu slabost pri jakim emocijama (smijeh, iznenađenje). Idiopatska hipersomnija znači tešku pospanost bez poznatog uzroka.
  ]
  #v(3pt)

  #handout-section(title: "Koji su simptomi?", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Izrazita dnevna pospanost unatoč dovoljnom snu
    - Iznenadni napadi sna (zaspivanje u neočekivanim situacijama)
    - Slabost mišića pri smijehu ili jakim emocijama (katapleksija)
    - Nemogućnost pokretanja pri buđenju ili zaspivanju (paraliza sna)
    - Halucinacije (žive slike/zvukovi) pri zaspivanju ili buđenju
    - Izrazito teško buđenje i „omamljenost" ujutro (inercija sna)
  ]
  #v(3pt)

  #handout-section(title: "Što možete učiniti sami?", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Planirani kratki drijemovi od 15–20 minuta (mogu značajno pomoći)
    - Držite redovit raspored spavanja
    - NE vozite kada ste pospani — to je životno važno
    - Obavijestite poslodavca i bližnje o svom stanju
  ]
  #v(3pt)

  #handout-section(title: "Moguće zdravstvene posljedice", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - Prometne nesreće zbog iznenadnog zaspivanja
    - Gubitak posla zbog pospanosti
    - Socijalna izolacija i depresija
  ]
  #v(3pt)

  #handout-section(title: "Kada se javiti liječniku?", color: cat-hypersomnia, icon: "▸")[
    #set list(indent: 4pt, body-indent: 4pt, spacing: 1pt)
    - ODMAH — svaka katapleksija (mišićna slabost na emociju) zahtijeva neurološku obradu
    - Ako ste izrazito pospani unatoč dovoljnom snu (više od 7 sati)
    - Ako zasipate u neprimjerenim situacijama (za volanom, na poslu, u razgovoru)
  ]

  #handout-footer
]

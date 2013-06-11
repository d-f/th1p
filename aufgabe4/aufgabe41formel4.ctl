// Das Netz ist reversibel
AF (
	EinGang == 5 &
	WarteschlangeKapazitaet1 == 2 & WarteschlangeKapazitaet2 == 2 &
	WarteSchlange1 == 0 & WarteSchlange2 == 0 &
	AusgabeKapazitaet1 == 1 & AusgabeKapazitaet2 == 1 &
	Ausgabe1 == 1 & Ausgabe2 == 0 &
	KapazitaetKasse == 3 & Warteschlange_Kasse == 0 &
	SpeiseSaal == 0 &
	NeueKunden == 0
);
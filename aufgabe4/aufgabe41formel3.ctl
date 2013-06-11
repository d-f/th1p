// Das Netz ist lebendig.
AG AF (
	EinGang > 0 |
	(WarteSchlange1 > 0 & WarteschlangeKapazitaet1 > 0) |
	(WarteSchlange2 > 0 & WarteschlangeKapazitaet2 > 0) |
	(Ausgabe1 > 0 & AusgabeKapazitaet1 > 0) |
	(Ausgabe2 > 0 & AusgabeKapazitaet2 > 0) |
	(Warteschlange_Kasse > 0 & KapazitaetKasse > 0) |
	SpeiseSaal > 0 |
	NeueKunden == 5
);
// Das Netz ist lebendig.
AG(
	EF(EinGang > 0 & WarteschlangeKapazitaet2 > 0) &
	EF(EinGang > 0 & WarteschlangeKapazitaet1 > 0) &
	EF(WarteSchlange2 > 0 & Bedienstete > 0 & AusgabeKapazitaet2) &
	EF(WarteSchlange1 > 0 & Bedienstete > 0 & AusgabeKapazitaet1) &
	EF(Ausgabe2 > 0 & KapazitaetKasse > 0) &
	EF(Ausgabe1 > 0 & KapazitaetKasse > 0) &
	EF(Warteschlange_Kasse > 0) &
	EF(SpeiseSaal > 0) &
	EF(NeueKunden == 5)
);
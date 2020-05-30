% Exercice  : 1=Bleu, 2=Rouge, 3=Jaune, 4=Vert
color_map :-
	L = [R1, R2, R3, R4, R5, R6],
	fd_domain(L, 1, 4),
	fd_all_different([R1, R2, R3, R5]),
	fd_all_different([R1, R3, R4]),
	fd_all_different([R1, R5, R6]),
	fd_labeling(L),
	write(L).


% Exercice 4 : 1=Vert, 2=Jaune, 3=Bleu
car :- 
	L=[C1, C2, C3, C4, C5, C6, C7, C8],
	fd_domain(L, 1, 3),
	fd_atmost(3, L, 1),
	fd_exactly(3, L, 2),
	fd_atmost(2, L, 3),
	C1 #\= 1,
	fd_labeling(L),
	write(L).
% Exercice 4 : 1=green, 2=yellow, 3=blue
car :-
	L=[C1, C2, C3, C4, C5, C6, C7, C8],
	fd_domain(L, 1, 3), % colors between 1 and 3
	fd_atmost(3, L, 1), % at most 3 green
	fd_exactly(3, L, 2), % exactly 3 yellow
	fd_atmost(2, L, 3), % at most 2 blue
	C1 #\= 1, % first not green
	fd_labeling(L),
	write(L).

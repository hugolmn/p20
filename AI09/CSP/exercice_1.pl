% Exercice 1
reines :-
	fd_domain([C1, C2, C3, C4, L1, L2, L3, L4], 1, 4),
	C1 #\= C2,
	C1 #\= C3, 
	C1 #\= C4, 
	C2 #\= C3, 
	C2 #\= C4,
	C3 #\= C4,  
	fd_all_different([L1, L2, L3, L4]),
	C1 + L2 #\= L1 + C2,
	C1 + L3 #\= L1 + C3,
	C1 + L4 #\= L1 + C4,
	C2 + L3 #\= L2 + C3,
	C2 + L4 #\= L2 + C4,
	C3 + L4 #\= L3 + C4,
	W1 #= C1 + L1,
	W2 #= C2 + L2, 
	W3 #= C3 + L3, 
	W4 #= C4 + L4,
	fd_all_different([W1, W2, W3, W4]),
	fd_labeling([C1, C2, C3, C4, L1, L2, L3, L4]),
	write('R1='), write(C1), write(','), write(L1), nl,
	write('R2='), write(C2), write(','), write(L2), nl,
	write('R3='), write(C3), write(','), write(L3), nl,
	write('R4='), write(C4), write(','), write(L4), nl.
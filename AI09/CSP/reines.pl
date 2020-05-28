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

% Exercice 2
reines2 :-
	L=[X1, X2, X3, X4],
	fd_domain(L, 1, 4),
	fd_all_different(L),
	W1 #= X1+1,
	W2 #= X2+2,
	W3 #= X3+3,
	W4 #= X4+4,
	fd_all_different([W1, W2, W3, W4]),
	X1+2 #\=X2+1,
	X1+3 #\= X3+1,
	X1+4 #\= X4+1,
	X2+3 #\= X3+2,
	X3+4 #\= X4+3,
	fd_labeling(L),
	write(L).

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

% Exercice 5
send_more_money :-
	L=[S, E, N, D, M, O, R, Y],
	fd_domain(L, 0, 9),
	fd_all_different(L),
	S #\= 0,
	M #\= 0,
	1000*(S+M) + 100*(E+O) + 10*(N+R) + (D+E) #= 10000*M + 1000*O + 100*N + 10*E + Y,
	fd_labeling(L),
	write(L).

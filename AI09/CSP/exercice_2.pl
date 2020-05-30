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
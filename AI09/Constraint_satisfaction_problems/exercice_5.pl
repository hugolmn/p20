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
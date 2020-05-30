% Exercice 6
% Coins list in ascending order : maximization of the last one first => minimization of the number of coins
return_change(T, P, E2, E1, C50, C20, C10) :- 
	L = [P10, P20, P50, P1, P2],
	fd_domain(L, 0, 15),
	P2 #=< E2,
	P1 #=< E1,
	P50 #=< C50,
	P20 #=< C20,
	P10 #=< C10,
	T - P #= 200 * P2 + 100 * P1 + 50 * P50 + 20 * P20 + 10 * P10,
	fd_labeling(L),
	write(L).

% Exercice 6 : other solution
return_change2(T, P, E2, E1, C50, C20, C10) :- 
	return_change_n_coins(T, P, E2, E1, C50, C20, C10, 0).

% We want to have a change of exactly N coins.
return_change_n_coins(T, P, E2, E1, C50, C20, C10, N) :- 
	L = [P10, P20, P50, P1, P2],
	fd_domain(L, 0, N),
	P2 #=< E2,
	P1 #=< E1,
	P50 #=< C50,
	P20 #=< C20,
	P10 #=< C10,
	T - P #= 200 * P2 + 100 * P1 + 50 * P50 + 20 * P20 + 10 * P10,
	N #= P10 + P20 + P50 + P1 + P2,
	fd_labeling(L),
	write(L).

% If it fails for N coins, try with N+1.
return_change_n_coins(T, P, E2, E1, C50, C20, C10, N) :-
	M is N + 1,
	return_change_n_coins(T, P, E2, E1, C50, C20, C10, M).
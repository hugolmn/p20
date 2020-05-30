% Exercice 8 : scheduling

schedule :- find_dates(0).

find_dates(T):-
	L = [A, B, C, D, E, F, G, H, I, J],
	fd_domain(L, 0, 50),

	% requirement constraints
	A #= 0,
	B #>= A + 7,
	C #>= B + 3,
	D #>= A + 7,
	E #>= C + 1,
	E #>= D + 8,
	F #>= C + 1,
	F #>= D + 8,
	G #>= C + 1,
	G #>= D + 8,
	H #>= F + 1,
	I #>= H + 3,
	J #>= E + 3,
	J #>= G + 1,
	J #>= I + 2,

	% maximum time constraint
	T #>= A + 7,
	T #>= B + 3,
	T #>= C + 1,
	T #>= D + 8,
	T #>= E + 2,
	T #>= F + 1,
	T #>= G + 1,
	T #>= H + 3,
	T #>= I + 2,
	T #>= J + 1,

	fd_labeling(L),
	write(L).

find_dates(T):-
	T2 is T + 1,
	find_dates(T2).
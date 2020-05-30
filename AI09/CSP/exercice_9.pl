% Exercice 9
carre_magique :-
	L = [A, B, C, D, E, F, G, H, I], % first_line : [A, B, C] etc...
	fd_domain(L, 1, 9),

	% lines
	N #= A + B + C,
	N #= D + E + F,
	N #= G + H + I,

	% columns
	N #= A + D + G,
	N #= B + E + H,
	N #= C + F + I,

	% diagonals
	N #= A + E + I,
	N #= G + E + C,

	fd_labeling(L),
	write(L).
% Exercice 10 : Sudoku
solve_sudoku :-
	sudoku_grid(Grid),
	maplist(apply_fd_domain, Grid),
	maplist(fd_all_different, Grid),
	transpose(Grid, GridT),
	maplist(fd_all_different, GridT),
	squares(Grid, GridS),
	maplist(fd_all_different, GridS),
	maplist(fd_labeling, Grid),
	print_grid(Grid).

sudoku_grid(
	[;
		[_,3,_,4,_,5,_,7,_],
		[6,2,_,_,8,_,4,_,_],
		[7,_,_,_,_,1,_,_,9],
		[2,4,6,_,_,3,8,_,_],
		[_,_,_,_,_,_,2,_,3],
		[_,1,3,6,_,_,9,5,_],
		[_,_,8,_,4,7,_,_,_],
		[1,_,_,9,_,_,_,_,6],
		[_,_,9,_,5,_,3,8,2]
	]).

% pretty print for grid
print_grid([]):- print_sep.
print_grid([L1, L2, L3 | T]):-
	print_sep, 
	print_line(L1),
	print_line(L2),
	print_line(L3),
	print_grid(T).

print_sep :- write(' ------- ------- ------- '), nl.

print_line([]) :- write('|'), nl.
print_line([E1, E2, E3 | T]):-
	write('|'), write(' '), write(E1), write(' '), write(E2), write(' '), write(E3), write(' '),
	print_line(T).

% applying fd_domain to each row
apply_fd_domain(L):- fd_domain(L, 1, 9).

% return squares
squares([], []).
squares([H1, H2, H3 | T], [S1, S2, S3 | T2]) :-
	squares(H1, H2, H3, [S1, S2, S3]),
	squares(T, T2).

squares([], [], [], []).
squares([H11, H12, H13 | H1], [H21, H22, H23 | H2], [H31, H32, H33 | H3], [[H11,H12,H13,H21,H22,H23,H31,H32,H33] | S]) :-
	squares(H1, H2, H3, S).

% transpose matrix (from clpfd module)
transpose([], []).
transpose([F|Fs], Ts) :-
    transpose(F, [F|Fs], Ts).

transpose([], _, []).
transpose([_|Rs], Ms, [Ts|Tss]) :-
        lists_firsts_rests(Ms, Ts, Ms1),
        transpose(Rs, Ms1, Tss).

lists_firsts_rests([], [], []).
lists_firsts_rests([[F|Os]|Rest], [F|Fs], [Os|Oss]) :-
        lists_firsts_rests(Rest, Fs, Oss).
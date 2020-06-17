% Exercice 11 : Hugo Le Moine
% S=start date, E=end_
% Minimizes the sum of the ending dates
minimize_mean_end_dates :-
	get_data(R, P, D),
	S = [_, _, _, _, _], % list of start dates
	E = [_, _, _, _, _], % list of end dates

	fd_domain(S, 0, 22),
	availability_constraints(S, R),
	get_end_dates(E, S, P),
	end_date_constraints(E, D),
	fd_all_different(S),
	check_conflicts(S, E, S, E),
	sum_end_dates(E, Sum),
	fd_minimize(fd_labeling(S), Sum),

	write(S),
	nl,
	write(E).

% Minimizes the earliest possible finish
minimize_latest_end_date :-
	get_data(R, P, D),
	S = [_, _, _, _, _], % list of start dates
	E = [_, _, _, _, _], % list of end dates

	fd_domain(S, 0, 22),
	availability_constraints(S, R),
	get_end_dates(E, S, P),
	end_date_constraints(E, D),
	fd_all_different(S),
	check_conflicts(S, E, S, E),
	end_date(E, Max),
	fd_minimize(fd_labeling(S), Max),

	write(S),
	nl,
	write(E).

% Returning lists of input data
get_data(
	[3, 1, 5, 4, 0], % availability
	[5, 6, 2, 1, 4], % duration
	[18, 10, 14, 12, 22]). % due date

% Constraint on availability date
availability_constraints([], []).
availability_constraints([Hs | Ts], [Hr | Tr]) :-
	Hs #>= Hr,
	availability_constraints(Ts, Tr).

% Create list of ending dates
get_end_dates([], [], []).
get_end_dates([He | Te], [Hs  | Ts], [Hp | Tp]) :-
	He #= Hs + Hp,
	get_end_dates(Te, Ts, Tp).

% Constraint on due date
end_date_constraints([], []).
end_date_constraints([He | Te], [Hd | Td]) :-
	Hd #>= He,
	end_date_constraints(Te, Td).

% Check if starting and ending dates are not conflicting (one task at a time)
check_conflicts([], [], _, _).
check_conflicts([Hs | Ts], [He | Te], S, E) :-
	not_between_start(Hs, S, E),
	not_between_end(He, S, E),
	check_conflicts(Ts, Te, S, E).

% Check if a start date is between the start and the end of another task
not_between_start(_, [], []).
not_between_start(S, [S | Ts], [ _ | Te]) :- not_between_start(S, Ts, Te).
not_between_start(S, [Hs | Ts], [He | Te]):-
	% Check if S is not between Hs and He.
	S #< Hs #\/ S #>= He,
	not_between_start(S, Ts, Te).

% Check if an end date is between the start and the end of another task
not_between_end(_, [], []).
not_between_end(E, [_ | Ts], [ E | Te]) :- not_between_end(E, Ts, Te).
not_between_end(E, [Hs | Ts], [He | Te]):-
	% Check if E is not between Hs and He.
	E #=< Hs #\/ E #> He,
	not_between_end(E, Ts, Te).

% Returns sum od all elements in list
sum_end_dates([], 0).
sum_end_dates([He | Te], Sum) :-
	sum_end_dates(Te, S),
	Sum #= He + S.

% Returns the earliest possible finish date considering end dates in list
end_date([], _).
end_date([He | Te], Max) :-
	Max #>= He,
	end_date(Te, Max).

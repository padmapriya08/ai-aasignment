parent(pam,bob).
parent(tom,bob).
parent(tom,liz).
parent(bob,ann).
parent(bob,pat).
parent(pat,jim).


female(pam).
female(liz).
female(ann).
female(pat).
male(bob).
male(tom).
male(jim).

offspring(Y,X):-
	parent(X,Y).
mother(X,Y):-
	parent(X,Y).

grandparent(X,Z):-
	parent(X,Y),
	parent(Y,Z).
sister(X,Y):-
	parent(Z,X),
	parent(Z,Y),
	female(X),
	X\==Y.

% male(x) menyatakan bahwa x adalah laki-laki.
/* Bob, Charlie, David, Hans, & Jim adalah laki-laki */
male(bob).
male(charlie).
male(david).
male(hans).
male(jim).
% female(x) menyatakan bahwa x adalah perempuan.
/* Alice, Emma, Fiona, Grace, Irene, Kelly, & Lily adalah
perempuan */
female(alice).
female(emma).
female(fiona).
female(grace).
female(irene).
female(kelly).
female(lily).
% parent(x,y) menyatakan bahwa x adalah orangtua dari y
parent(alice,charlie).
parent(bob,charlie).
parent(bob,emma).
parent(charlie,fiona).
parent(charlie,grace).
parent(emma,irene).
parent(fiona,david).
parent(fiona,lily).
parent(grace,jim).
parent(grace,kelly).
parent(hans,jim).
parent(hans,kelly).
% adult(x) menyatakan bahwa x adalah orang dewasa.
/* Alice, Bob, Charlie, Emma, Fiona, Grace, & Hans adalah orang
dewasa. */
adult(alice).
adult(bob).
adult(charlie).
adult(emma).
adult(fiona).
adult(grace).
adult(hans).
% teen(x) menyatakan bahwa x adalah remaja.
% Irene, David, & Lily adalah remaja.
teen(irene).
teen(david).
teen(lily).
% kid(x) menyatakan bahwa x adalah anak kecil.
% Jim & Kelly adalah anak kecil.
kid(jim).
kid(kelly).


gentleman(X):- male(X),adult(X).
lady(X):- female(X),adult(X).
teen_boy(X):- male(X),teen(X).
teen_girl(X):- female(X),teen(X).
little_boy(X):- male(X),kid(X).
little_girl(X):- female(X),kid(X).

loves_FIFA21(X):- teen_boy(X); little_boy(X).
loves_CandyCrush(X):- teen_girl(X); little_girl(X).

:- dynamic([xis/1, xis_not/1]).


beer_style(pilzner) :- 
	is(lager),
	is(light),
	is(drinkable),
	is(weak),
	is(bitter),
	is(cheap),
	flavor(beer).
					   
beer_style(light_lager) :- 
	is(lager),
	is(light),
	is(drinkable),
	is(weak),
	is(cheap),
	flavor(beer).
						
beer_style(marzen) :- 
	is(lager),
	is(light),
	is(drinkable),
	is(weak),
	is(cheap),
	flavor(bread).
				   
beer_style(dark_lager) :- 
	is(lager),
	is(dark),
	is(drinkable),
	is(weak),
	is(bitter),
	flavor(bread).

beer_style(bock) :- 
	is(lager),
	is(dark),
	is(full),
	is(strong),
	is(bitter),
	is(medium_price),
	flavor(cherry).
	
beer_style(baltic_porter) :- 
	is(lager),
	is(dark),
	is(full),
	is(strong),
	is(sweet),
	is(expensive),
	flavor(caffe).
							 
beer_style(brown_porter) :- 
	is(lager),
	is(dark),
	is(drinkable),
	is(weak),
	is(sweet),
	is(cheap),
	flavor(bread).
							
beer_style(weizen) :- 
	is(ale),
	is(light),
	is(drinkable),
	is(weak),
	is(sweet),
	is(medium_price),
	flavor(banana).
	
beer_style(witbier) :- 
	is(ale),
	is(light),
	is(drinkable),
	is(medium_strong),
	is(sweet),
	is(medium_price),
	flavor(herbal).
						
beer_style(saison) :- 
	is(ale),
	is(light),
	is(drinkable),
	is(medium_strong),
	is(sweet),
	is(medium_price),
	flavor(banana).

beer_style(ipa) :- 
	is(ale),
	is(light),
	is(drinkable),
	is(medium_strong),
	is(bitter),
	is(medium_price),
	flavor(citrus).
					
beer_style(bitter) :- 
	is(ale),
	is(light),
	is(drinkable),
	is(medium_strong),
	is(bitter),
	is(medium_price),
	flavor(bread).
	
beer_style(barley_wine) :- 
	is(ale),
	is(light),
	is(full),
	is(strong),
	is(bitter),
	is(expensive),
	flavor(citrus).
	
beer_style(stout) :- 
	is(ale),
	is(dark),
	is(full),
	is(medium_strong),
	is(sweet),
	is(cheap),
	flavor(caffe).
					  
beer_style(dubble) :- 
	is(ale),
	is(light),
	is(full),
	is(medium_strong),
	is(sweet),
	is(medium_price),
	flavor(herbal).
					   
beer_style(triple) :- 
	is(ale),
	is(light),
	is(full),
	is(strong),
	is(sweet),
	is(expensive),
	flavor(herbal).
					  
beer_style(lambic) :- 
	is(ale),
	is(light),
	is(drinkabele),
	is(weak),
	is(sour),
	is(expensive),
	flavor(citrus).
					  
beer_style(berliner_weise) :- 
	is(ale),
	is(light),
	is(full),
	is(medium_strong),
	is(sour),
	is(expensive),
	flavor(bread).

beer_style(gose) :- 
	is(ale),
	is(light),
	is(drinkabele),
	is(weak),
	is(sour),
	is(expensive),
	flavor(herbal).
					  
is(ale) :- 
	is(likes_sweets), 
	is(has_money).

is(lager) :-  
	is(likes_beer), 
	is(thirsty).

is(light) :-  
	is(thirsty), 
	is(hot).

is(dark) :- 
	is(evening), 
	is(likes_coffe).

is(drinkabele) :- 
	is(thirsty), 
	is(hot).

is(full) :- 
	is(evening), 
	is_not(thirsty).

is(weak) :- 
	is(thirsty), 
	is_not(likes_alkohol).

is(medium_strong) :- 
	is(evening), 
	is_not(thirsty), 
	is(likes_alkohol).

is(strong) :- 
	is(evening), 
	is_not(thirsty), 
	is(likes_alkohol), 
	is(has_money).

is(bitter) :- 
	is(likes_beer).

is(bitter) :- 
	is(likes_tea).

is(sweet) :- 
	is(likes_sweets).

is(sweet) :- 
	is(likes_fruit).

is(sour) :- 
	is(likes_fruits), 
	is(likes_lemons).

is(sour) :- 
	is(hot), 
	is(afternoon).

is(medium_price) :- 
	is(has_money).

is(expensive) :- 
	is(has_money), 
	is_not(thirsty).

is(cheap):- 
	is_not(has_money).

is(cheap):- 
	is(thirsty).

flavor(beer) :- 
	is(likes_beer), 
	is(thirsty).

flavor(bread) :- 
	is(likes_bread).

flavor(bread) :- 
	is(likes_beer).

flavor(cherry) :- 
	is(likes_fruit).

flavor(cherry) :- 
	is(likes_sweets).

flavor(caffe) :- 
	is(likes_caffe).

flavor(caffe) :- 
	is(likes_sweets).

flavor(banana) :- 
	is(likes_fruit).

flavor(caffe) :- 
	is(likes_sweets).

flavor(citrus) :- 
	is(likes_fruit).

flavor(citrus) :- 
	is(likes_lemons).

flavor(herbal) :- 
	is(likes_tea).
 
is(X) :-
	xis(X), !.
 
is(X) :-
	not(xis_not(X)),
	pytaj(X, tak).
 
is_not(X) :-
	xis_not(X), !.
 
is_not(X) :-
	not(xis(X)),
	pytaj(X, nie).
 
pytaj(X, tak) :-
	!, write('\nCzy: '), write(X), write('? \n'),
	write('t) Tak \n'), 
	write('n) Nie \n'),
	readln([Replay]),
	pamietaj(X, Replay),
	odpowiedz(Replay, tak).
 
pytaj(X, nie) :-
	!, write('\nCzy: '), write(X), write('? \n'),
	write('t - Tak \n'), 
	write('n - Nie \n'),
	readln([Replay]),
	pamietaj(X, Replay),
	odpowiedz(Replay, nie).   
 
odpowiedz(Replay, tak):-
	sub_string(Replay, 0, _, _, 't').
 
odpowiedz(Replay, nie):-
	sub_string(Replay, 0, _, _, 'n').
 
pamietaj(X, Replay) :-
	odpowiedz(Replay, tak),
	assertz(xis(X)).
 
pamietaj(X, Replay) :-
	odpowiedz(Replay, nie),
	assertz(xis_not(X)).
 
wyczysc_fakty :-
	write('\n\nNacisnij enter aby zakonczyc\n'),
	retractall(xis(_)),
	retractall(xis_not(_)),
	readln(_).
 
drukuj([]).
drukuj( [X|Y] ):- write('- '), write(X), write(',\n'), drukuj(Y).
 
wykonaj :- 
	setof(A, beer_style(A), B),
	write('\nProponujemy następujące gatunki piw:\n'), drukuj(B), 
	wyczysc_fakty.	
 
 
wykonaj  :-
	write('\nNie jestem w stanie ustalic'),
	write(' jakie piwo będzie dla ciebie dobre.\n\n'), 
	wyczysc_fakty.



buys(john,beef).
%John lives alone
livesAlone(john).
%Anyone who lives alone shops alone
%Hence john shops alone
shopsAlone(X):-livesAlone(X).
%john shops tomatoees at safeway yesterday
%If someone shops alone and buys then he is adult
isa(X,adult):-buys(X,_),shopsAlone(X).
isa(X,child):- !,\+ isa(X,adult).
isa(X,child):- isa(X,adult), !, fail.
shop(john,beef,safeway,yesterday).
pound(john,1,beef):-shop(john,beef,safeway,yesterday).
shop(john,tomatoes,safeway,yesterday).
pound(john,2,tomatoes):-shop(john,tomatoes,safeway,yesterday).
typeOf(sausage_meat,meat).
typeOf(stockfish,meat).
typeOf(anchovy,meat).
typeOf(pemmican,meat).
typeOf(horsemeat,meat).
typeOf(spawner,meat).
typeOf(spring_chicken,meat).
typeOf(roaster,meat).
typeOf(variety_meat,meat).
typeOf(hereford,meat).
typeOf(cattle,meat).
typeOf(shad,meat).
typeOf(veal,meat).
typeOf(ground_beef,meat).
typeOf(jerky,meat).
typeOf(eel,meat).
typeOf(cartilaginous_fish,meat).
typeOf(panfish,meat).
typeOf(rail,meat).
typeOf(cattalo,meat).
typeOf(rock_salmon,meat).
typeOf(sausage,meat).
typeOf(seine,meat).
typeOf(pastrami,meat).
typeOf(game,meat).
typeOf(stuff,meat).
typeOf(pork,meat).
typeOf(haddock,meat).
typeOf(quintessence,meat).
typeOf(trout,meat).
typeOf(dark_meat,meat).
typeOf(galloway,meat).
typeOf(mullet,meat).
typeOf(chicken,meat).
typeOf(cut,meat).
typeOf(raw_meat,meat).
typeOf(fingerling,meat).
typeOf(northern_snakehead,meat).
typeOf(fryer,meat).
typeOf(stew_meat,meat).
typeOf(cock,meat).
typeOf(mouthbreeder,meat).
typeOf(climbing_perch,meat).
typeOf(alewife,meat).
typeOf(smelt,meat).
typeOf(dominique,meat).
typeOf(broiler,meat).
typeOf(quiddity,meat).
typeOf(hypostasis,meat).
typeOf(young_fish,meat).
typeOf(angle,meat).
typeOf(food_fish,meat).
typeOf(bare_bones,meat).
typeOf(halal,meat).
typeOf(net_fish,meat).
typeOf(shrimp,meat).
typeOf(brail,meat).
typeOf(shark,meat).
typeOf(trawl,meat).
typeOf(charolais,meat).
typeOf(wimp,meat).
typeOf(bottom-feeder,meat).
typeOf(rhode_island_red,meat).
typeOf(bony_fish,meat).
typeOf(aberdeen_angus,meat).
typeOf(chick,meat).
typeOf(hake,meat).
typeOf(spatchcock,meat).
typeOf(longhorn,meat).
typeOf(carbonado,meat).
typeOf(still-fish,meat).
typeOf(bottom_lurkers,meat).
typeOf(escargot,meat).
typeOf(santa_gertrudis,meat).
typeOf(durham,meat).
typeOf(schrod,meat).
typeOf(meat,meat).
typeOf(gripe,meat).
typeOf(orpington,meat).
typeOf(bird,meat).
typeOf(game_fish,meat).
typeOf(hen,meat).
typeOf(crab,meat).
typeOf(prawn,meat).
typeOf(lamb,meat).
typeOf(capon,meat).
typeOf(cold_cuts,meat).
typeOf(bully_beef,meat).
typeOf(beef,meat).
typeOf(red_meat,meat).
typeOf(scallop,meat).
typeOf(fish,meat).
typeOf(salmon,meat).
typeOf(pisces,meat).
typeOf(mouton,meat).
typeOf(rough_fish,meat).
typeOf(meat,cattle).
typeOf(meat,person).
typeOf(meat,content).
typeOf(meat,aquatic_vertebrate).
typeOf(meat,weakling).
typeOf(meat,domestic_fowl).
typeOf(meat,complain).
typeOf(meat,contest).
typeOf(meat,catch).
typeOf(meat,plant_part).
typeOf(meat,poultry).
typeOf(meat,search).
typeOf(meat,objection).
typeOf(meat,food).
typeOf(chicken,food).
typeOf(fish,food).
typeOf(beef,food).

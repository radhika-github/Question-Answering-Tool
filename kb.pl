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
% Tops Maple road Supermarket is a type of Supermarket.
typeOf(northBerkeleySafeway,supermarket).
% Soap is a type of skin care product.
typeOf(soap,skincare).
%Tomatoes are type of vegetables
typeOf(tomatoes,vegetable).
%Deodrant is type of skincare
typeOf(deodorant,skincare).
typeOf(creditcard,money).
typeOf(money,money).
typeOf(cash,money).
%Yesterday John went to the North Berkeley Safeway supermarket and bought two
%pounds of tomatoes and a pound of ground beef


%buys(john,beef).
%-----------
%John lives alone
livesAlone(john).
%Anyone who lives alone shops alone
%Hence john shops alone
shopsAlone(X):-livesAlone(X).
%john shops tomatoees at safeway yesterday
%If someone shops alone and buys then he is adult
isa(X,adult):-shop(X,_,_,_),shopsAlone(X).
isa(X,child):- !,\+ isa(X,adult).
isa(X,child):- isa(X,adult), !, fail.
%----------------------------------------------------
%  Tomatoes have a unit weight of  0.5 pounds
unitWeight(tomatoes,0.5).

% If John shopped for tomatoes, he bought 2 pounds of tomatoes and 1 pund of beef.
pounds(john,1,beef):-shop(john,beef,northBerkeleySafeway,yesterday).
pounds(john,2,tomatoes):-shop(john,tomatoes,northBerkeleySafeway,yesterday).
shop(john,beef,northBerkeleySafeway,yesterday).
shop(john,tomatoes,northBerkeleySafeway,yesterday).

% The number of tomatoes that john has is obtained by the no. of pounds/unit weight.
number(john,X,tomatoes):-unitWeight(tomatoes,Y),pounds(john,Z,tomatoes),X is Z/Y.

% If N>=M then N is larger or equal to M.
largerorequal(N,M):-N>=M.

% If John has some number of tomatoes and if it is larger or equal to some number then he has atleast that many number of tomatoes.
hasatleast(john,Y,tomatoes):- number(john,X,tomatoes),largerorequal(X,Y).

%--------------------------------------------------------------------------------------

% If someone shopped for something somewhere sometime, then they bought that thing.
bought(X,Y):-shop(X,Y,_,_).

% If John bought something and if that thing is meat then John bought meat
buys(X,Y):-bought(X,Z), typeOf(Z,Y).

%---------------------------------------------------------------------------------------

% Mary was buying tomatoes at northBerkeleySafeway at the same time as john.
shop(mary,tomatoes,northBerkeleySafeway,T):-shop(john,tomatoes,northBerkeleySafeway,T).

% If someone buys something at some store at sometime then that person is at that store at that time.
isAtStore(X,Y,Z):-shop(X,_,Y,Z).

% If someone buys something at some stall at sometime then that person is at that stall at that time.
isAtStall(X,Y,Z):-shop(X,Y,_,Z).

% If someone is at some stall at some store, and if someone else is also at the  same stall and same store, then that person sees the other person
sees(X,V):-isAtStore(X,Y,Z),isAtStall(X,U,Z),isAtStore(V,Y,Z),isAtStall(V,U,Z).

% Or else they will not see each other.
sees(X,V):-!, \+isAtStore(X,Y,Z); \+isAtStall(X,U,Z); \+isAtStore(V,Y,Z); \+isAtStall(V,U,Z), fail.

% If X sees Y then Y also sees X.
sees(Y,X):-sees(X,Y).

%--------------------------------------------------------------------------------------------

% If something is a vegetable then it originates from nature.
originates(X,nature):-typeOf(X,vegetable).
% If something is a skincare then it does not originate in nature.
originates(X,nature):-typeOf(X,skincare), !, fail.
%If something is of form something which orginates from man, then it is made in the supermarket.
made(X,supermarket):- !,\+originates(X,nature).
%---------------------------------------

% If something is a Vegetable or meat, it can be eaten.
can(X,eaten):-typeOf(X,vegetable);typeOf(X,meat).
% Precedence of days
after(yesterday,daybeforeyesterday).
after(today, daybeforeyesterday).
after(tomorrow, daybeforeyesterday).
after(today,yesterday).
after(tomorrow,yesterday).
after(tomorrow,today).
% Someone has something at sometime if he has shopped for it.
has(X,Y,T):-shop(X,Y,_,T).
% Someone eats something at sometime if someone has something at that time and if that thing can be eaten.
whatWill(X,Y,T,eatThem):- has(X,Y,K), can(Y,eaten),after(T,K).

%-------------------------------------------------------------

% Tops has a branch called Tops Maple road supermarket
hasbranch(safeway,northBerkeleySafeway).

% Skin care products, vegetables, meat are available in supermarkets.
available(skincare,supermarket).
available(meat,supermarket).
available(vegetable,supermarket).

% Something sells something if it has a branch which is a supermarket which has those class of products
sells(X,Y):- hasbranch(X,U),typeOf(U,supermarket),typeOf(Y,Z),available(Z,supermarket);
hasbranch(X,U),typeOf(U,supermarket),available(Y,supermarket).

%---------------------------------------------------------------------
% If anyone shops at someplace for anything at some times then they pay money for that thing at that time at that place.
pay(X,Z,Y,T):-shop(X,_,Y,T).

% If someone has to pay money at sometime at a store which is of some type then they must bring that money to that place at that time.
bring(X,Z,Y,T):-pay(X,Z,K,T),typeOf(K,Y),typeOf(Z,money).

%------------------------------------------

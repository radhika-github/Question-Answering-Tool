Steps to run the project

1. Install SWI Prolog
2. Click on File -> Consult -> Open kb.pl file
3. Run the prolog commands according to the questions. 

Please find below summary of the Prolog commands required to ask questions and their respective answers obtained from knowledge base.


12.5
a. Is John a child or an adult? [Adult]
   isa(john,X).
   X = adult.
   isa(john,adult).
   true.
   isa(john,child).
   false.

b. Does John now have at least two tomatoes? [Yes]
   hasatleast(john,2,tomatoes).
   true .
   hasatleast(john,100,tomatoes).
   false.

c. Did John buy any meat? [Yes]
   buys(john,vegetable).
   true

d. If Mary was buying tomatoes at the same time as John, did he see her? [Yes]
   sees(mary,john).
   true .
   sees(john,mary).
   true .

e. Are the tomatoes made in the supermarket? [No]
   made(tomatoes,supermarket).
   false.
   made(deodorant,supermarket).
   true.

f. What is John going to do with the tomatoes? [Eat them]
   whatWill(john,tomatoes,today,X).
   X = eatThem .
   whatWill(john,tomatoes,tomorrow,X).
   X = eatThem .
   whatWill(john,tomatoes,yesterday,X).
   false.

g. Does Safeway sell deodorant? [Yes]
   sells(safeway,pork).
   true .
   sells(safeway,shoes).
   false.

h. Did John bring some money or a credit card to the supermarket? [Yes]
   bring(john,money,supermarket,yesterday).
   true .
   bring(john,creditcard,supermarket,yesterday).
   true .
   bring(john,cash,supermarket,yesterday).
   true .

i. Does John have less money after going to the supermarket? [Yes]
   moneyLeft(john,X,supermarket,after).
   X = less .

12.6
a. Are there other people in Safeway while John is there? [Yes—staff!]
   peopleAtStore(john,northBerkeleySafeway,yesterday).
   true .
   peopleAtStore(john,northBerkeleySafeway,today).
   false.

b. Is John a vegetarian? [No]
   veg(john).
   false .
   veg(mary).
   true .

c. Who owns the deodorant in Safeway? [Safeway Corporation]
   owns(safeway,deodorant).
   true .

d. Did John have an ounce of ground beef? [Yes]
   hasAtleastOunces(john,1,beef).
   true .

f. Do the tomatoes fit in John’s car trunk? [Yes]
   fitInCar(john,beef).
   false.
   fitInCar(john,tomatoes).
   true.
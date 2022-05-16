animal(mammal,tiger,carnivore,stripes).
animal(mammal,hyena,carnivore,ugly).
animal(mammal,lion,carnivore,mane).
animal(mammal,zebra,herbivore,stripes).
animal(bird,eagle,carnivore,large).
animal(bird,sparrow,scavenger,small).
animal(reptile,snake,carnivore,long).
animal(reptile,lizard,scavenger,small).

mammal(Name) :- animal(mammal,Name,_,_).
carnivore(Name) :- animal(mammal,Name,carnivore,_).
large_bird(Name) :- animal(bird,Name,_,large).
mammal_with_stripes(Name) :- animal(mammal,Name,_,stripes).
reptile_with_mane(Name) :- animal(reptile,Name,_,mane).
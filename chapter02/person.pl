person(bill,male).
person(george,male).
person(alfred,male).
person(carol,female).
person(margaret,female).
person(jane,female).

couple(Name1,Name2) :- person(Name1,_), person(Name2,_).
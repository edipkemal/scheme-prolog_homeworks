professor('Cuneyt Bazlamacci').
professor('Onur Demirors').

associate_professor('Belgin Ergenc').
associate_professor('Mustafa Ozuysal.').
associate_professor('Yalin Bastanlar').
associate_professor('Tolga Ayav').

assistant_professor('Damla Oguz').
assistant_professor('Nesli Erdogmus').

research_assistant('Adil Coban').
research_assistant('Altug Yigit').
research_assistant('Didem Genc').
research_assistant('Ersin Cine').
research_assistant('Burak Topcu').
research_assistant('Leyla Tekin').
research_assistant('Huseyin Unlu').
research_assistant('Samet Tenekeci').

assistant_of('Adil Coban','Cuneyt Bazlamacci').
assistant_of('Altug Yigit','Onur Demirors').
assistant_of('Didem Genc','Belgin Ergenc').
assistant_of('Ersin Cine','Mustafa Ozuysal.').
assistant_of('Burak Topcu','Tolga Ayav').
assistant_of('Leyla Tekin','Yalin Bastanlar').
assistant_of('Huseyin Unlu','Damla Oguz').
assistant_of('Samet Tenekeci','Nesli Erdogmus').

teaches('Cuneyt Bazlamacci',ceng504).
teaches('Onur Demirors',ceng316).
teaches('Onur Demirors',ceng416).
teaches('Onur Demirors',ceng551).
teaches('Belgin Ergenc',ceng544).
teaches('Belgin Ergenc',ceng566).
teaches('Belgin Ergenc',ceng643).
teaches('Belgin Ergenc',ceng542).
teaches('Belgin Ergenc',ceng600).
teaches('Mustafa Ozuysal.',ceng416).
teaches('Mustafa Ozuysal.',ceng506).
teaches('Tolga Ayav',ceng415).
teaches('Tolga Ayav',ceng416).
teaches('Yalin Bastanlar',ceng416).
teaches('Damla Oguz',ceng212).
teaches('Nesli Erdogmus',ceng416).
teaches('Nesli Erdogmus',ceng690).

teaches(X,Y) :- %if a professor teaches, his/her assistant teaches, too.
assistant_of(X,Z),
teaches(Z,Y).

advisor(X) :- %only professors who gives 415 or 416 can be advisor.
(teaches(X,ceng415);
teaches(X,ceng416)),
\+ research_assistant(X).

higher_seniority(X,Y) :-
professor(X), \+ professor(Y); %professor higher if Y is not professor, too
research_assistant(Y), \+ research_assistant(Y); %assistant lower if Y is not assistant, too
(associate_professor(X),assistant_professor(Y)).

trains(X,Y) :-
assistant_of(Y,X).

gives_same_lecture(X,Y) :-
teaches(X,Z),
teaches(Y,Z).

















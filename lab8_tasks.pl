% Task 2
sumlist([],0).

sumlist([H|T],Sum) :-
    sumlist(T,S),
    Sum is H+S.

% Task 3
total_average :-
    write('Enter first number: '),
    read(A),
    write('Enter second number: '),
    read(B),
    write('Enter third number: '),
    read(C),
    Total is A+B+C,
    Average is Total/3,
    write('Total = '),
    write(Total),
    nl,
    write('Average = '),
    write(Average),
    nl.

/*
82 ?- sumlist([1,2,5,7],Sum).
Sum = 15.

83 ?- sumlist([],Sum).
Sum = 0.

84 ?- total_average.
Enter first number: 4.
Enter second number: |: 10.
Enter third number: |: 20.
Total = 34
Average = 11.333333333333334
true.

*/
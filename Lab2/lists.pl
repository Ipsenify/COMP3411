is_a_list([]).

is_a_list([Head|Tail]) :-
    is_a_list(Tail).
	
head_tail(List, Head, Tail) :-
    List = [Head|Tail].
    
% base case
is_member(Element, list(Element, _)).

% recursive case (to be completed!)
is_member(Element, list(_, Tail))   :-
    is_member(Element, Tail).
    
%cons(ListA, ListB, Result) :-
   
% concat(List1, List2, Concat_List1_List2):
%   Concat_List1_List2 is the concatenation of List1 & List2
concat([], List2, List2).
concat([Item | Tail1], List2, [Item | Concat_Tail1_List2]) :-
      concat(Tail1, List2, Concat_Tail1_List2).

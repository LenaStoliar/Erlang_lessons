-module(duplicator).
-export([duplicate_elements/1]).

% Функція для дублювання елементів у списку
duplicate_elements(List) ->
    lists:flatmap(fun(X) -> [X, X] end, List).

% Приклад використання:
% duplicator:duplicate_elements([1, 5, 3, 6]).

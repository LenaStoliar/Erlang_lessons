-module(replicator).
-export([replicate_elements/1]).

% Функція-реплікатор
replicate_elements([]) -> [];  % Базовий випадок: для порожнього списку повертаємо порожній список
replicate_elements([X | Rest]) -> [X, X | replicate_elements(Rest)].

% Приклад використання:
% replicator:replicate_elements([1, 5, 3, 6]).

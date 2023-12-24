
-module(task01_module).
-export([last/1]).

last(List) when is_list(List) ->
    case lists:reverse(List) of
        [Head|_] -> Head;
        [] -> undefined
    end.


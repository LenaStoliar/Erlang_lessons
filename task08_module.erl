-module(list_utils).
-export([remove_consecutive_duplicates/1]).

remove_consecutive_duplicates([]) ->
    [];
remove_consecutive_duplicates([X]) ->
    [X];
remove_consecutive_duplicates([H, H | T]) ->
    remove_consecutive_duplicates([H | T]);
remove_consecutive_duplicates([H1, H2 | T]) ->
    [H1 | remove_consecutive_duplicates([H2 | T])].

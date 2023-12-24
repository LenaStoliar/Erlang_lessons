-module(list_utils).
-export([pack_consecutive_duplicates/1]).

pack_consecutive_duplicates([]) ->
    [];
pack_consecutive_duplicates([X]) ->
    [[X]];
pack_consecutive_duplicates([H, H | T]) ->
    [[H | HList] | Rest] = pack_consecutive_duplicates([H | T]),
    [HList | Rest];
pack_consecutive_duplicates([H1, H2 | T]) ->
    [H1List | Rest] = pack_consecutive_duplicates([H2 | T]),
    [[H1 | H1List] | Rest].

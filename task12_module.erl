-module(modified_rle).
-export([decode_modified_rle/1]).

decode_modified_rle(List) ->
    decode_modified_rle(List, []).

decode_modified_rle([], Acc) ->
    lists:reverse(Acc);
decode_modified_rle([{Char, Count} | T], Acc) when Count > 1 ->
    decode_modified_rle(T, lists:duplicate(Count, Char) ++ Acc);
decode_modified_rle([{Char, 1} | T], Acc) ->
    decode_modified_rle(T, [Char | Acc]).

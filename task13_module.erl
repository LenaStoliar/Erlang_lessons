-module(rle_decoder).
-export([decode_rle/1]).

decode_rle(List) ->
    decode_rle(List, []).

decode_rle([], Acc) ->
    lists:reverse(Acc);
decode_rle([{Char, Count} | T], Acc) when Count > 1 ->
    decode_rle(T, lists:duplicate(Count, Char) ++ Acc);
decode_rle([{Char, 1} | T], Acc) ->
    decode_rle(T, [Char | Acc]).

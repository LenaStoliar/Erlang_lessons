-module(rle).
-export([encode_rle/1]).

encode_rle(List) ->
    encode_rle(List, []).

encode_rle([], Acc) ->
    lists:reverse(Acc);
encode_rle([X], Acc) ->
    encode_rle([], [{X, 1} | Acc]);
encode_rle([H, H | T], Acc) ->
    encode_rle([H | T], [{H, 2} | Acc]);
encode_rle([H1, H2 | T], Acc) ->
    encode_rle(T, [{H1, 1} | Acc]).

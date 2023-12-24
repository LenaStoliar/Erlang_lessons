-module(modified_rle).
-export([encode_modified_rle/1]).

encode_modified_rle(List) ->
    encode_modified_rle(List, []).

encode_modified_rle([], Acc) ->
    lists:reverse(Acc);
encode_modified_rle([X], Acc) ->
    encode_modified_rle([], [{X, 1} | Acc]);
encode_modified_rle([H, H | T], Acc) ->
    encode_modified_rle([H | T], [{H, 2} | Acc]);
encode_modified_rle([H1, H2 | T], Acc) when H1 /= H2 ->
    encode_modified_rle(T, [{H1, 1} | Acc]).

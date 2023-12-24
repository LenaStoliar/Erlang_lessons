-module(list_utils).
-export([flatten/1]).

flatten(List) when is_list(List) ->
    lists:flatten([flatten(X) || X <- List]);
flatten(Element) ->
    [Element].

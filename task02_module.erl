
-module(task02_module).
-export([last_two/1]).

last_two(List) when is_list(List) ->
    case lists:reverse(List) of
        [Second, First | _] -> {First, Second};
        [First | _] -> {First, undefined};
        [] -> {undefined, undefined}
    end.

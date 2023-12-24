
-module(task03_module).
-export([nth/2]).

nth(N, List) when is_list(List), N > 0 ->
    lists:nth(N, List).

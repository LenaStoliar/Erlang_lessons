
-module(task04_module).
-export([count_elements/1]).

count_elements(List) when is_list(List) ->
    length(List).

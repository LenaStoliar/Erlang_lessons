-module(list_utils).
-export([is_palindrome/1]).

is_palindrome(List) ->
    List == lists:reverse(List).

%%%-------------------------------------------------------------------
%%% @author apple
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 24. 三月 2015 下午12:14
%%%-------------------------------------------------------------------
-author("apple").
-ifdef(debug).
-define(TRACE(Info), error_logger:info_msg("( Module is :~p,Line is :~p ) Message is  : ~p", [?MODULE, ?LINE, Info])).
-else.
-define(TRACE(Info), ok).
-endif.

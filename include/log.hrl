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
-define(TRACE(Info), error_logger:info_msg("( Module => ~p, Line=> ~p ) Message =>  ~p ~n", [?MODULE, ?LINE, Info])).
-define(TRACE(Message,Info), error_logger:info_msg("( Module => ~p, Line=> ~p ) Message=> ~p Data => ~p ~n", [?MODULE, ?LINE, Message,Info])).
-else.
-define(TRACE(Info), ok).
-define(TRACE(Message,Info), ok).
-endif.

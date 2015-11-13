%%%-------------------------------------------------------------------
%%% @author iMac
%%% @copyright (C) 2015, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 13. 十一月 2015 下午9:10
%%%-------------------------------------------------------------------
-module(ec_http).
-author("iMac").
-define(CONTENT_TYPE, "application/x-www-form-urlencoded").
-define(TIME_OUT, 3000).

%% API
-export([request_http/4, request_http/3, request_ibrowse/4, request_ibrowse/3]).

%% demo
%%ibrowse:send_req("http://se.ntkeji.com:81/NativePhone.ashx", [{"Content-Type", "application/x-www-form-urlencoded"}], post, "op=55808bdecdef03|68"),
%%httpc:request(post, {"http://se.ntkeji.com:81/NativePhone.ashx", [], "application/x-www-form-urlencoded", <<"op=55808bdecdef03|68">>}, [], []).

%% @doc post_http/3.
%% http post by httpc.
%% @spec post_http(Url, Body::list()) -> response()
request_http(Url, Method, Body) ->
  post_http(Url, Method, Body, ?CONTENT_TYPE).

request_http(Url, Method, Body, ContentType) ->
  httpc:request(Method, {Url, [], ContentType, Body}, [{timeout, ?TIME_OUT}], []).

%% @doc post_ibrowse/3.
%% http post by ibrowse.
%% @spec post_http(Url, Body::list()) -> response()
request_ibrowse(Url, Method, Body) ->
  post_ibrowse(Url, Method, Body, ?CONTENT_TYPE).

request_ibrowse(Url, Method, Body, ContentType) ->
  ibrowse:send_req(Url, [{"Content-Type", ContentType}], Method, Body, [], ?TIME_OUT).


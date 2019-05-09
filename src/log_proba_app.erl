%%%-------------------------------------------------------------------
%% @doc log_proba public API
%% @end
%%%-------------------------------------------------------------------

-module(log_proba_app).

-include_lib("mylogger/include/log_proba_logger.hrl").
%-include("../include/log_proba_logger.hrl").

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%%====================================================================
%% API
%%====================================================================

start(_StartType, _StartArgs) ->
    ?debug('ReceivedMessage', #{from => <<"from">>, count => 11}),
    log_proba_sup:start_link().

%%--------------------------------------------------------------------
stop(_State) ->
    ok.

%%====================================================================
%% Internal functions
%%====================================================================

Rails.application.routes.draw do
  get '/query_params_game' => 'params_game#query'
  get '/name' => 'params_game#name'
  get '/guess' => 'params_game#guess'
  get '/url_guess/:wildcard' => 'params_game#wildcard'
end

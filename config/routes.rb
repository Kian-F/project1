Rails.application.routes.draw do

  root :to => 'pages#home'

   resources :users, :only => [:new, :create, :index]

   get '/login' => 'session#mnew'
   post '/login' => 'session#create'
   delete '/login' => 'session#destroy'

  get '/players/my' => 'players#my_players', as: 'my_players'
  resources :players



end

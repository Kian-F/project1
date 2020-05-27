Rails.application.routes.draw do

  # root :to => 'pages#home'
 
  root to: 'stories#top'
   resources :users, :only => [:new, :create, :index, :show]

   get '/login' => 'session#new'
   post '/login' => 'session#create'
   get '/login' => 'session#show'
   delete '/login' => 'session#destroy'

   get '/players/my' => 'players#my_players', as: 'my_players'
  resources :players


end

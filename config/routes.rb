Rails.application.routes.draw do
  get 'session/new'
  root :to => 'pages#home'
  resources :users, :only =>[:new, :create, :index]

  get '/login' => 'session#new'
  post 'login' => 'seesion#create'
  delete 'login' => 'session#destroy'

  
end

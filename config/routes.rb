Rails.application.routes.draw do
  # For details on the DSL available within this file, 
  #see http://guides.rubyonrails.org/routing.html
  root 'welcomes#index'

  resources :users
  resources :admins
  resources :questions
  resources :scores
  resources :predictions
  resources :discussions

  get '/set/:id' => 'set#show'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/admins/:id/announce' => 'admins#announce'
  #patch 'prediction/:id/update' => 'prediction/update'
end

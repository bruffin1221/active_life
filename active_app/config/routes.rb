Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: 'static#welcome'
 get '/login'=> 'sessions#new'
 post '/login' => 'sessions#create'
 get '/personal_profiles/new' => 'personal_profiles#new' 
 post '/logout' => 'sessions#destroy'
 get '/logout' => 'sessions#destroy'

  resources :personal_profiles

  resources :motivations

  resources :goals

  resources :availables

  resources :costs

  resources :supports


end

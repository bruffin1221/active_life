Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 root to: 'static#welcome'
 get '/login'=> 'sessions#new'
 post '/login' => 'sessions#create'
 get '/personal_profiles/new' => 'personal_profiles#new' 
 post '/logout' => 'sessions#destroy'
 get '/logout' => 'sessions#destroy'

  resources :personal_profiles, only: [:new, :show] do 
    resources :motivations, only: [:new, :edit]
  end
  
  resources :personal_profiles 
  resources :motivations
 
  resources :personal_profiles, only: [:new, :show] do 
    resources :goals, only: [:new, :edit]
  end
  resources :goals

  resources :personal_profiles, only: [:new, :show] do 
    resources :availables, only: [:new, :edit]
  end
  resources :availables

  resources :costs

  resources :supports


end

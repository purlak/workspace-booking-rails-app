Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users
    resources :workspaces
    resources :buildings
    resources :bookings, only: [:create]
    
    root "application#home"
    
    #Signup routes
    get '/signup', to: 'users#new'
    post '/signup', to: 'users#create'
    
    #Login routes
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'

    
end

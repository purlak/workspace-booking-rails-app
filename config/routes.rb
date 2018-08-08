Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    
    root to: "application#index"
    
    get '/auth/github/callback' => 'sessions#githubcreate'
    
    resources :users 
    
    
    resources :workspaces do 
         resources :bookings, only: [:new, :create, :show]
    end 
    
    resources :buildings
    
   
    #Signup routes
    get '/signup', to: 'users#new'
    post '/signup', to: 'users#create'
    
    #Login routes
    get '/login', to: 'sessions#new'
    post '/login', to: 'sessions#create'
    
    #Logout route
    get 'logout' => 'sessions#logout'


    
end

Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :users
    resources :workspaces
    resources :buildings
    resources :bookings, only: [:create]
    
    root "application#home"

end

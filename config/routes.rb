Rails.application.routes.draw do
  # get 'sessions/new'
  # get 'sessions/create'
  # get 'sessions/login'
  # get 'sessions/welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rides do 
    resources :ride_requests
  end

  resources :users
  resources :ride_requests

  get 'login', to: 'sessions#new'   
  post 'login', to: 'sessions#create'   
  get 'welcome', to: 'sessions#welcome'
  get 'logout', to: 'sessions#destroy'
  delete 'logout', to: 'sessions#destroy'
  get 'authorized', to: 'sessions#page_requires_login'
  # get 'logout' => 'sessions#destroy'
  # resources :sessions
end

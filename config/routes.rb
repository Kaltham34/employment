Rails.application.routes.draw do
  get 'sessions/new'

  resources :types
  resources :jobs
  resources :roles
  resources :users
  root to: 'visitors#index'
  
  get 'open' => 'job#open'
  get 'signup'=> 'users#new'
  post 'signup' => 'users#new'
  get 'users' => 'users#show'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'

  # get 'login' => 'sessions#new'
  # post 'login' => 'sessions#create'
  #get 'sessions/new' => 'sessions#new', as: :login
  post 'sessions/new' => 'sessions#create'
  delete 'logout'=> 'sessions#destroy'
  resources :users do
    get :make_admin, on: :member
  end
end

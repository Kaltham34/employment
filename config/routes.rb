Rails.application.routes.draw do
  resources :types
  resources :jobs
  resources :roles
  resources :users
  # root to: 'visitors#index'
  # resources :users do
  #     get :make_admin, on: :member
  # end

  root 'sessions#new'
  post 'sessions/new' => 'sessions#new', as: :login
  get 'signup'=> 'users#new', as: :signup
  get 'sessions/new' => 'sessions#new', as: :Login
  # get 'sessions/destroy' => 'sessions#destroy', as: :Logout
  post 'sessions/new' => 'sessions#create'
  delete 'sessions/index'=> 'sessions#destroy', as: :Logout
  get '/filled' => 'jobs#open'
end

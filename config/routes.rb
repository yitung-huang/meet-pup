Rails.application.routes.draw do
  root 'pages#index'

  get 'dashboard', to: 'pages#dashboard'
  get 'profile', action: :show, controller: 'users'

  get 'signup', to: 'pages#signup'

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :users do
    resources :dogs
  end

end

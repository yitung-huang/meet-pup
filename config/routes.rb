Rails.application.routes.draw do
  root 'pages#index'

  get 'dashboard', to: 'pages#dashboard'
  get 'profile', action: :show, controller: 'users'

  resources :users do
    resources :dogs
  end

end

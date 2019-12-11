Rails.application.routes.draw do
  
  root :to => 'application#welcome'
  get 'dashboard', to: 'application#dashboard'
  get 'logs/vis', to: 'logs#vis'
  
  resources :logs
  resources :dive_sites do
    resources :logs, only: [:index, :new]
  end
  
  devise_for :users, controllers: { omniauth_callbacks: 'callbacks' }
  
end

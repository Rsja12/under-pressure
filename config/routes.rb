Rails.application.routes.draw do

  resources :logs
  resources :dive_sites do
    resources :logs, only: [:index, :new]
  end
  devise_for :users, :controllers => {registrations: 'registrations' }
  root to: 'application#welcome'
  
end

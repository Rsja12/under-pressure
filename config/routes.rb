Rails.application.routes.draw do
  resources :logs
  resources :reviews
  resources :dive_sites
  devise_for :users, :controllers => {registrations: 'registrations' }
  root to: 'application#welcome'
end

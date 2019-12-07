Rails.application.routes.draw do

  unauthenticated do
    root :to => 'application#welcome'
 end
 
#  authenticated do
#    root :to => 'dashboard#index'
#  end

  resources :logs

  resources :dive_sites do
    resources :logs, only: [:index, :new]
  end
  
  devise_for :users, :controllers => {registrations: 'registrations' }
  
  # root to: 'dive_sites#index'
  
end

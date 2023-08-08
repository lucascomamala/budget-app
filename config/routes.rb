Rails.application.routes.draw do
  devise_for :users
  
  root 'static_pages#splash'

  resources :groups
  resources :logs
end

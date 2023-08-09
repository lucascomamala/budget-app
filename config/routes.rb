Rails.application.routes.draw do
  devise_for :users
  
  # Non-authenticated users root path
  root to: 'static_pages#splash', constraints: ->(request) { !request.env['warden'].authenticated?(:user) }

  # Authenticated users root path
  authenticated :user do
    root 'groups#index', as: :authenticated_user
  end

  resources :groups, only: %i[index new create] do
    resources :logs
  end
end

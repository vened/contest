Rails.application.routes.draw do
  root to: 'visitors#index'
  # devise_for :users
  # standard devise routes available at /users
  # NOTE: make sure this comes first!!!
  devise_for :users

  # token auth routes available at /api/v1/auth
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'User', at: 'auth'
    end
  end

  resources :users
end

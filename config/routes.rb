Rails.application.routes.draw do
  devise_for :readers
  devise_for :users
  # post 'admin/sign_in', to: 'users#sign_in'
  # post 'admin/sign_up', to: 'users#sign_up'
  # post 'reader/register', to: 'readers#sign_up'
  # post 'reader/login', to: 'sessions#create'
  namespace :api do
    namespace :v1 do
      namespace :readers do
        resources :readers
        resources :sessions
        resources :gifts, only: [:index]
      end
      namespace :users do
        resources :sessions
        resources :users
        resources :gifts, only: [:create]
      end
    end
  end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

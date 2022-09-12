Rails.application.routes.draw do
  devise_for :users
  post '/sign_in', to: 'users#sign_in'
  post '/sign_up', to: 'users#sign_up'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

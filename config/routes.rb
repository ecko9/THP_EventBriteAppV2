Rails.application.routes.draw do
  
  root 'static_pages#index'
  get 'static_pages/secret', to: 'static_pages#secret'
  devise_for :users
  resources :users, only: [:show, :index]
  resources :participations
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

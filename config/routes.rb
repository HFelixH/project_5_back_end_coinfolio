Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:create]
  resources :users

  delete :logout, to: 'sessions#logout'
  get :logged_in, to: 'sessions#logged_in'

  root to: 'static#home'
end

Rails.application.routes.draw do
  devise_for :users
  # get 'story/index'
  resources :stories
  resources :characters
  root 'characters#index'
end

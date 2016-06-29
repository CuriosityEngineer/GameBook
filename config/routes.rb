Rails.application.routes.draw do
  devise_for :users
  # get 'story/index'
  resources :stories
  root 'story#index'
end

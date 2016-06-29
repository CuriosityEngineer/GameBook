Rails.application.routes.draw do
  # get 'story/index'
  resources :storys
  root 'story#index'
end

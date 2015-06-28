Rails.application.routes.draw do
  devise_for :users
  root 'procesos#index'

  resources :procesos
  resources :questions
end

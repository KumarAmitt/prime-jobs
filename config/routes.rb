Rails.application.routes.draw do

  root 'jobs#index'

  resources :jobs
  devise_for :users
  get 'profile', to: 'users#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

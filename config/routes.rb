Rails.application.routes.draw do
  resources :favorites
  resources :people
  resources :companies
  devise_for :users
  root to: "companies#index"
end

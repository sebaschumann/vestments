Rails.application.routes.draw do
  resources :vestments
  resources :garments
  resources :garment_types
  resources :brands
  resources :emmisions
  resources :hosts
  devise_for :users

  root "brands#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

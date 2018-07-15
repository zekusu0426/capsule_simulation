Rails.application.routes.draw do
  resources :cards
  resources :capsules
  resources :elements
  resources :characters
  resources :bands
  devise_for :admin_accounts, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

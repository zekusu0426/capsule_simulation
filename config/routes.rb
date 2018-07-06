Rails.application.routes.draw do
  resources :bands
  resources :bang_dream_characters
  devise_for :admin_accounts, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

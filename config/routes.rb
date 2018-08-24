Rails.application.routes.draw do
  get 'top/index'
  resources :cards
  resources :capsules , only:[:index]
  resources :elements , only:[:index]
  resources :characters , only:[:index]
  resources :bands , only:[:index]
  devise_for :admin_accounts, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'top#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

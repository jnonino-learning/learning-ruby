Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'  
  get 'home/index'
    resources :posts
    resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'pages/about'
  get 'pages/contact'
  get 'pages/resources'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'home#index'  
  get 'home/index'
    resources :posts
    resources :categories
    match '/about', :to => 'pages#about', via: :all
    match '/contact', :to => 'pages#contact', via: :all
    match '/resources', :to => 'pages#resources', via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

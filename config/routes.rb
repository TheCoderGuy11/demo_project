Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'welcome/home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user 

  resources :products
  
  resources :orders do 
    member do 
      get 'cancel_item'
    end
  end 
    
  root 'welcome#home' 
end

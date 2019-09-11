Rails.application.routes.draw do
   require 'sidekiq/web'

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  
  get 'welcome/home'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :user 

  resources :products do
    collection do 
      get 'filter' 
    end
  end
   
  resources  :categories

  authenticate :user do
    mount Sidekiq::Web => '/sidekiq'
  end
  
  resources :orders do 
    member do 
      get 'cancel_item'
      get 'invoice_pdf'
    end
  end 
    
  root 'welcome#home' 
end

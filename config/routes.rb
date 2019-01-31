Rails.application.routes.draw do




  ActiveAdmin.routes(self)
  resources :specific_items
  get 'cookies_test/set_cookies'
  get 'cookies_test/show_cookies'
  get 'cookies_test/delete_cookies'
  resources :articles
  resources :orders
  resources :order_line_items
  devise_for :users
  resources :users
  resources :inventory_items
  resources :inventory_models
  resources :inventory_item_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/about_us' => 'static_pages#about_us'
  get '/contact' => 'static_pages#contact'
  get '/shopping_cart' => 'static_pages#shopping_cart'
  get '/categories' => 'inventory_item_categories#index'
  get '/checkout' => 'static_pages#checkout'
  #get '/articles' => 'static_pages#articles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end

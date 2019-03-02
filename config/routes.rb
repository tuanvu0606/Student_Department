Rails.application.routes.draw do
  resources :students
  resources :articles
  namespace :admin_lte do
    resources :users
      resources :inventory_items
    resources :inventory_item_categories
    resources :inventory_items
    resources :specific_items
    get '/home' => 'application#home'
    # Admin root
    root to: 'application#index'
  end

  get '/admin' => 'static_pages#home'
  
  resources :orders
  resources :order_line_items
  devise_for :users
  resources :users
  resources :inventory_items
  resources :inventory_models
  resources :inventory_item_categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/help' => 'static_pages#help'
  get '/help' => 'static_pages#help'
  
  get '/home' => 'static_pages#home'
  
  get '/about_us' => 'static_pages#about_us'
  get '/contact' => 'static_pages#contact'
  get '/shopping_cart' => 'static_pages#shopping_cart'
  get '/categories' => 'inventory_item_categories#index'
  get '/checkout' => 'static_pages#checkout'
  #get '/articles' => 'static_pages#articles'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'articles#index'
end

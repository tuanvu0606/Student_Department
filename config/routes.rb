Rails.application.routes.draw do

  resources :tutors
  resources :blogs
  resources :authorizedstaffs
  resources :messages
  resources :meetings
  resources :documents
  resources :comments
  resources :marketing_coordinators
  resources :faculties
  devise_for :users
  resources :students
  resources :blogs
  resources :room_messages
  resources :rooms
  namespace :admin_lte do
    resources :room_messages
    resources :rooms
    resources :authorizedstaffs
    resources :faculties
    resources :users
    resources :inventory_items
    resources :inventory_item_categories
    resources :inventory_items
    resources :specific_items
    resources :marketing_coordinators
    resources :students
    resources :tutors
    resources :blogs
    get '/home' => 'application#home'
    # Admin root
    root to: 'application#index'
  end

  # get '/admin' => 'static_pages#home'
  
  resources :orders
  resources :order_line_items
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
  #get '/blogs' => 'static_pages#blogs'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#student_blogs'
  # root 'application#index'
  # admin_lte_scope :user do
  #   root to: "devise/sessions#new"
  # end
  # root "static_pages#home"
end

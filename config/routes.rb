Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Admin routes

  devise_for :admins

  authenticated :admin do
    root to: "admin#index", as: :admin_root
  end

  get "admin" => "admin#index"

  namespace :admin do
    resources :orders
    resources :products
    resources :activities
    resources :articles
    resources :albums
    resources :media
    resources :events
    resources :schools, only: [ :edit, :update]
    resources :profiles, only: [ :new, :edit, :update]
  end

  # Regular user routes

  root 'start#index'
  get 'home', to: 'home#index'

  resources :activities, only: [:index, :show]
  resources :articles, only: [:index, :show]
  resources :albums, only: [:index, :show]
  resources :media, only: [:show]
  resources :events, only: [:index, :show]
  resources :products, only: [:index]

  get "cart" => "carts#show"
  post "checkout" => "checkouts#create"
  get "success" => "checkouts#success"
  get "cancel" => "checkouts#cancel"
  post "webhooks" => "webhooks#stripe"
end

Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Admin routes

  devise_for :admins

  authenticated :admin do
    root to: "admin#index", as: :admin_root
  end

  get "admin" => "admin#index"

  namespace :admin do
    resources :activities
    resources :articles
    resources :albums
    resources :media
    resources :events
  end

  # Regular user routes

  root "home#index"

  resources :activities, only: [:index, :show]
  resources :articles, only: [:index, :show]
  resources :albums, only: [:index, :show]
  resources :media, only: [:show]
  resources :events, only: [:index, :show]
end

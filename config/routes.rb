TravelServer::Application.routes.draw do

  match "oauth/callback" => "oauths#callback"
  match "oauth/:provider" => "oauths#oauth", :as => :auth_at_provider

  get "oauths/callback"

  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"
  get "dashboard" => "dashboard#index", :as => "dashboard"
  resources :users do
    resource :profile
  end
  resources :trips
  resources :sessions
  get "secret" => "home#secret", :as => "secret"
  root :to => "home#index"
end

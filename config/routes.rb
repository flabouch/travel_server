TravelServer::Application.routes.draw do

  root :to => "home#index"

  devise_for :users
  resources :users, :only => :show
  authenticate :user do
      root :to => "user#show"
    end
  resources :transportations
end

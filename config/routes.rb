Rails.application.routes.draw do
  root to: "sessions#new"
  get "hi" => "static_pages#root"

  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
  resources :user_countries, only: [:destroy, :create]
  namespace :api, defaults: { format: :json } do
    get "show" => "views#show"
    get "leaders" => "views#leaders"
    get "map" => "views#map"
  end
end

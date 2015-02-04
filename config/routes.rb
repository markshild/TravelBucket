Rails.application.routes.draw do
  root to: "sessions#new"
  get "hi" => "static_pages#root"
  resources :users, only: [:new, :create]
  resource :session, only: [:new, :create, :destroy]
end

Rails.application.routes.draw do
  devise_for :users
  root to: "squids#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "squids#home"
  resources :squids, only: [:index, :show, :new, :create] do
    resources :bookings, only: [:new, :create, :update, :edit]
  end
  resources :bookings, only: [:index]
end

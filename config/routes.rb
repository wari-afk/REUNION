Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reunions, only: [:new, :create] do
    resources :participations, only: [:create, :new]
    resources :date_options, only: [:create, :new]
  end
end

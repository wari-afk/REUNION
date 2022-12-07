Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reunions, only: [:new, :create, :show] do
    resources :participations, only: [:create, :show]
    resources :date_options, only: [:create, :index]
    resources :suggested_destinations, only: [:show]
  end

  post "date_options/upvote", to: "date_options#upvote", as: "upvote_date_option"
end

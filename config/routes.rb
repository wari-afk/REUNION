Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :reunions, only: [:new, :create, :show] do
    resources :participations, only: [:create, :new]
    resources :date_options, only: [:create, :new, :index]
    resources :suggested_destinations, only: [:new,:show]
  end

  post "date_options/:date_option_id/upvote", to: "date_options#upvote", as: "upvote_date_option"
end

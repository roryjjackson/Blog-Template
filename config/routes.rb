Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # resources users: do
  resources :articles, :comments, :tags, :categories
  # resources :articles, only: %i[new create]
  # end
  # Defines the root path route ("/")
  # root "articles#index"
end

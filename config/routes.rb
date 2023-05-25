Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # See all movies
  get "movies", to: "movies#index"

  # See all lists
  get "lists", to: "lists#index"

  # Create a list
  get "lists/new", to: "lists#new", as: "list_new"
  post "lists", to: "lists#create"
end

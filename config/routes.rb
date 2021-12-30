Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "page#welcome"
  get "page/first", to: "page#first"

  # Defines the root path route ("/")
  # root "articles#index"
end

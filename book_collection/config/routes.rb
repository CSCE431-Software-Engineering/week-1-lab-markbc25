Rails.application.routes.draw do
  get 'books/index'
  get 'books/new'
  get 'books/_form'
  get 'books/edit'
  get 'books/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :books
  root 'books#index'
  
end

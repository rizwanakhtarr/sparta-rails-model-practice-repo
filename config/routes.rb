Rails.application.routes.draw do
  get 'books/index'
  get 'books/create'
  get 'books/show'
  get 'books/edit'
  get 'books/new'
  get 'books/update'
  get 'books/delete'
  resources :authors
  # get 'authors/index'
  # get 'authors/show'
  # get 'authors/new'
  # get 'authors/edit'
  # get 'authors/create'
  # get 'authors/update'
  # get 'authors/delete'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

Rails.application.routes.draw do
  get 'sessions/new'
  get 'sessions/create'
  get 'sessions/destroy'
  resources :requests

  resources :assets_directorys

  resources :repairs

  resources :departments

  resources :aprrovals

  resources :allocations

  resources :employees

  
  # get 'requests/index'
  # get 'requests/create'
  # get 'requests/index'
  # get 'requests/show'
  # get 'requests/edit'
  # get 'requests/update'
  # get 'requests/delete'
  # get 'requests/destroy'

  # get 'assets_directorys/index'
  # get 'assets_directorys/create'
  # get 'assets_directorys/index'
  # get 'assets_directorys/show'
  # get 'assets_directorys/edit'
  # get 'assets_directorys/update'
  # get 'assets_directorys/delete'
  # get 'assets_directorys/destroy'

  # get 'repairs/index'
  # get 'repairs/create'
  # get 'repairs/index'
  # get 'repairs/show'
  # get 'repairs/edit'
  # get 'repairs/update'
  # get 'repairs/delete'
  # get 'repairs/destroy'

  # get 'departments/new'
  # get 'departments/create'
  # get 'departments/index'
  # get 'departments/show'
  # get 'departments/edit'
  # get 'departments/update'
  # get 'departments/delete'
  # get 'departments/destroy'

  # get 'aprrovals/new'
  # get 'aprrovals/create'
  # get 'aprrovals/index'
  # get 'aprrovals/show'
  # get 'aprrovals/edit'
  # get 'aprrovals/update'
  # get 'aprrovals/delete'
  # get 'aprrovals/destroy'

  # get 'allocations/new'
  # get 'allocations/create'
  # get 'allocations/index'
  # get 'allocations/show'
  # get 'allocations/edit'
  # get 'allocations/update'
  # get 'allocations/delete'
  # get 'allocations/destroy'

  # get 'employees/new'
  # get 'employees/create'
  # get 'employees/index'
  # get 'employees/show'
  # get 'employees/edit'
  # get 'employees/update'
  # get 'employees/delete'
  # get 'employees/destroy'
  get 'render/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'render#index'
end

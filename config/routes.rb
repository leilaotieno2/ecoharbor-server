Rails.application.routes.draw do
  get 'render/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'render#index'



    # Resources for Employees
    resources :employees
  
    # Resources for Assets
    resources :assets do
      resources :allocations, only: [:new, :create, :edit, :update]
      resources :repairs, only: [:new, :create, :edit, :update]
    end
  
    # Resources for Departments
    resources :departments
  
    # Resources for Requests
    resources :requests do
      member do
        post 'approve'
        post 'reject'
      end
    end
  
    # Resources for Approvals (Procurement Manager)
    resources :approvals, only: [:index, :show]
  
    # Custom routes for user-specific requests
    get 'user/requests' => 'requests#user_requests'
    get 'user/allocations' => 'allocations#user_allocations'
  
    # Custom routes for manager-specific views
    get 'manager/pending_requests' => 'requests#pending_requests'
    get 'manager/completed_requests' => 'requests#completed_requests'
  
# config/routes.rb
Rails.application.routes.draw do
  resources :requests, only: [:index, :show, :create, :update, :destroy]
end


  
    # ...
  
  end
  

Rails.application.routes.draw do
  # get 'users/index'
  # get 'applicants/index'
  # get 'users/new' #to: 'users#create1'
  # get 'users/create'
  # get 'users/edit'
  # get 'login', action: :login, controller: 'users'
  get 'signup', action: :new, controller: 'users'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "applicants#index"
  resources :applicants
  resources :users, except: [:new]
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
end

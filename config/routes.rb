RailsTutorial::Application.routes.draw do
  resources :microposts
  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :sessions, only: [:create, :destroy]

  get "users/new"

  root to: "static_pages#home"

  match '/help', to: 'static_pages#help'
  match '/contact_us', to: 'static_pages#contact_us'
  match '/about_us', to: 'static_pages#about_us'
  match '/signup', to: 'users#new'

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show'
  get '/users/new', to: 'users#new'

  post '/users', to: 'users#new'
  get '/users/:id/edit', to: 'users#create'

  put '/users/:id', to: 'users#update'
  delete 'users/:id', to: 'users#destroy'

  match '/signup', to: 'users#new'
  
  match '/signin', to: 'sessions#new'
  match '/sessions', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  post '/microposts', to: 'microposts#create'
  delete '/microposts/:id', to: 'microposts#destroy'

end
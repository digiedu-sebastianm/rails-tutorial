RailsTutorial::Application.routes.draw do
  
  resources :microposts
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  get "users/new"

  root to: "static_pages#home"

  match '/help', to: 'static_pages#help'
  match '/contact_us', to: 'static_pages#contact_us'
  match '/about_us', to: 'static_pages#about_us'
  match '/signup', to: 'users#new'

  get '/users/:id', to: 'users#show'
  get '/users', to: 'users#new'

  match '/signup', to: 'users#new'
  
  match '/signin', to: 'sessions#new'
  match '/sessions', to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete
end
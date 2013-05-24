RailsTutorial::Application.routes.draw do

  get "users/new"

  root to: "static_pages#home"

  match '/help', to: 'static_pages#help'
  match '/contact_us', to: 'static_pages#contact_us'
  match '/about_us', to: 'static_pages#about_us'
  match '/signup', to: 'users#new'
  
  resources :microposts
  resources :users

end
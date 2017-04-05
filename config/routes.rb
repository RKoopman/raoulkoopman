Rails.application.routes.draw do

  root 'static_pages#home'

  resources :posts
  resources :categories
  resources :admins

  get '/contacts', to: 'contacts#new'
  resources :contacts, only: [:new, :create]

  get '/send_mail', to: 'contacts#send_mail', via: 'post'

  get    '/thekoopmankode', to: 'posts#index'
  get    '/contact', to: 'contacts#new'
  get    '/home',    to: 'static_pages#home'
  get    '/about',   to: 'static_pages#about'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get    '/logout',  to: 'sessions#destroy'

end

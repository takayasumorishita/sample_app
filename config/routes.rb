Rails.application.routes.draw do
  get 'sessions/new'
  # home
  root 'static_pages#home'
  get '/home' => 'static_pages#home'
  get '/help' => 'static_pages#help'
  get '/about' => 'static_pages#about'
  get '/contact' => 'static_pages#contact'

  # users
  get '/signup' => 'users#new'
  post '/signup' => 'users#create'

  # session
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  # resources
  resources :users
end


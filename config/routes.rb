Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get '/help', to: 'home#help'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  # Defines the root path route ("/")
  # root "articles#index"
end

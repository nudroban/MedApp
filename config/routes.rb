Rails.application.routes.draw do
  resources :recomendations
  devise_for :users,
  controllers: {
    sessions: 'users/sessions'
  }

  root 'home#index'
  get '/help', to: 'home#help'
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  # Defines the root path route ("/")
  # root "articles#index"
end

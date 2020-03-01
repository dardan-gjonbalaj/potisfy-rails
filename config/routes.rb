Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users , only: [:show, :spotify]
  #get '/auth/spotify/callback', to: 'users#spotify'
  get '/auth/:provider/callback' => 'songs#index'
  resources :songs


end

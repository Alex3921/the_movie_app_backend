Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'api/v1/movies#index'
  
  namespace :api do
    namespace :v1 do
      
      resources :reviews, only: [:create, :destroy]
      
      get 'movies/search/:query', to: 'movies#search'
      get 'movies/:id', to: 'movies#show'
    end
  end
  
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }
end
  

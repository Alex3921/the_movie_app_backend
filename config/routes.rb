Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  
  namespace :api do
    namespace :v1 do
      
      resources :reviews, only: [:create, :destroy]

      get 'movies', to: 'movies#index'
      get 'movies/search/:query', to: 'movies#search'
      get 'movies/:id', to: 'movies#show'
    end
  end
end
  

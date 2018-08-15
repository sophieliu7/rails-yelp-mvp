Rails.application.routes.draw do
  get 'reviews/new'
  get 'reviews/create'
  # get 'restaurants', to: 'restaurants#index'
  # get 'restaurants/:id', to: 'restaurants#show'
  # get 'restaurants/new', to: 'restaurants#new'
  # get 'restaurants/:id/edit', to: 'restaurants#edit'
  # # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'restaurants/update'
  # get 'restaurants/destroy'

  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
end

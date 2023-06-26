Rails.application.routes.draw do
  resources :dog_houses, only: [:show]
  resources :reviews, only: [:show, :index, :create]
  resources :dog_houses do
    resources :reviews do
      resources :comments
    end
  end
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

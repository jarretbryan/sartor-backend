Rails.application.routes.draw do
  resources :looks
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :create, :show, :destroy]
      resources :looks, only: [:create, :show, :destroy]
    end
  end
end

Rails.application.routes.draw do
  devise_for :movies
  devise_for :users
  root to: 'lists#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:index, :create, :new, :destroy]
  # bookmark needs a list
  # no need to nest destroy, we dont need a list
  end
  resources :movies
  resources :bookmarks, only: [:destroy]
end

# routes is overwhelming, need explanations??

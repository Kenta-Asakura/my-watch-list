Rails.application.routes.draw do
  devise_for :users
  root to: 'movies#index'

  resources :movies, only: [:index, :show] do
    resources :bookmarks, only: [:create, :destroy]
  end

  # works together
  resources :bookmarks, only: [:index, :destroy]
  # delete '/movies/:movie_id/bookmarks/:id', to: 'bookmarks#destroy', as: :movie_bookmark
end

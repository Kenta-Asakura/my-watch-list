Rails.application.routes.draw do
  root to: 'articles#index'
  resources :articles, except: :index
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :lists, only: [:index, :show, :new, :create] do
    resources :bookmarks, only: [:create, :new]
  # bookmark needs a list
  # no need to nest destroy, we dont need a list
  # Defines the root path route ("/")
  # root "articles#index"
  end
  resources :bookmarks, only: [:destroy]
end

# routes is overwhelming, need explanations??

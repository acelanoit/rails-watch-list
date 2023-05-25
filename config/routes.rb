Rails.application.routes.draw do
  resources :lists, only: %i[index new create show] do
    resources :bookmarks, only: %i[new create destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

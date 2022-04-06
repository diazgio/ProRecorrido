Rails.application.routes.draw do
  get 'workers/index'
  get 'workers/create'
  get 'workers/update'
  get 'workers/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :workers
    end
  end
  # Defines the root path route ("/")
  # root "articles#index"
end

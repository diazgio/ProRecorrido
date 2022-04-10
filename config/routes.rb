Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :proyectos do
        resources :contratos, only: [:index, :create, :destroy] do
          resources :disponibilidads, only: [:index, :update]
        end
      end
      resources :workers

    end
  end
end

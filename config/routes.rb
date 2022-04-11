# frozen_string_literal: true

Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :proyectos do
        resources :contratos, only: %i[index create destroy] do
          resources :disponibilidads, only: [:index]
        end
      end
      resources :workers
    end
  end
end

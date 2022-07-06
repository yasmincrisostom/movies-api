Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :movies, only: [:index] do
        collection do
          get :year, defaults: { format: :json }
        end
      end
    end
  end
  root to: 'api/v1/movies#index', defaults: { format: :json }
end

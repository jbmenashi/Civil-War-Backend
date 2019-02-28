Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :days, only: [:index, :show]
      resources :events, only: [:index, :show]
      resources :subjects, only: [:index, :show]
      resources :circles, only: [:index, :show]
      resources :pinpoints, only: [:index, :show]
    end
  end
end

Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions' }
  root to: "application#index"
  resources :requests, only: [:show] do
    collection do
      get :search
    end
  end
  
  resources :users, only: [:show]
end

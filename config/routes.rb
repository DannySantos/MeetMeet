Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions', confirmations: 'confirmations' }
  root to: "application#index"
  resources :requests, only: [:show, :index] do
    collection do
      get :search
      get :get_requests_json
    end
  end
  
  resources :users, only: [:show]
  resources :profiles, only: [:edit, :show, :update]
end

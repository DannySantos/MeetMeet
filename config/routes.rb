Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations', sessions: 'sessions', confirmations: 'confirmations' }
  root to: "application#index"
  resources :requests, only: [:show, :index, :new, :create] do
    collection do
      get :search
    end
  end
  
  resources :users, only: [:show]
  resources :reviews, only: [:create]
  resources :profiles, only: [:edit, :show, :update]
  resources :messages, only: [:new, :create, :index]
end

Rails.application.routes.draw do
  devise_for :users

  root to: 'services#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html*
  resources :services do
    resources :reservations, only: [:new, :create, :index]
  end

  resources :reservations, except: [:new, :create, :index]
end

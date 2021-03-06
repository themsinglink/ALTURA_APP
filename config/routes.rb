Rails.application.routes.draw do
  devise_for :users
  root to: 'planes#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :planes, except: [:update, :edit, :destroy ] do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, only: [:show]

  get "/dashboard", to: "pages#dashboard"
  get "/trips", to: "pages#trips"

end

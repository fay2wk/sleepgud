Rails.application.routes.draw do

root 'static#index'

get 'sign_up', to: 'users#new'

get 'sign_in', to: 'sessions#new'
delete 'sign_out', to: 'sessions#destroy'

resources :sessions, only: [:create]

resources :sleep_cycles do
  resources :tracks
end

resources :users
end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

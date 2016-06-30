Rails.application.routes.draw do
  root 'static#index'

  get 'dash', to: 'static#dash'

  get 'about', to: 'static#about'

  get 'faq', to: 'static#faq'

  get 'dash', to: 'static#dash'

  resources :tracks

  devise_for :users

  devise_for :admins

  resources :wikis do
    resources :comments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

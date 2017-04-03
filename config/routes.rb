Rails.application.routes.draw do
  get 'mythos/index'
  root 'mythos#index'
  resources :heros
  resources :gods
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

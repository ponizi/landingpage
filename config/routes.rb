Rails.application.routes.draw do
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :visitor
  root 'visitor#index'
  resources :gaming
  resources :newspaper
  resources :business
end

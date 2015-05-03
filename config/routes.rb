Rails.application.routes.draw do

  get 'home/index' => 'home#index'
  resources :transactions
  resources :categories

  devise_for :users
  root to: 'home#index'
  
end

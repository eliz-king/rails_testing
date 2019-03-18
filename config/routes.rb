Rails.application.routes.draw do
  devise_for :users
  root 'schools#index'

  resources :schools do
  end
  resources :students do
  end
  
end

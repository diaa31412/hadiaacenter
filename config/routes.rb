Rails.application.routes.draw do
  devise_for :admins
  resources :courses
  resources :jordans
  get 'pages/index'
  get 'pages/aboutus'
  root 'pages#index'
  resources :imageheaders
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

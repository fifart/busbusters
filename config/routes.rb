Rails.application.routes.draw do
  resources :requests
  devise_for :users
  resources :availabilities
  root "pages#home"
end

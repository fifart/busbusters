Rails.application.routes.draw do
  devise_for :users
  resources :availabilities
  root "pages#home"
end

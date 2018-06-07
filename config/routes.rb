Rails.application.routes.draw do
  devise_for :users
  resources :availabilities, only: [:show, :update, :destroy, :new, :create, :edit]
  get '/ask', to: "pages#ask"
  get '/declare', to: "pages#declare"
  root "pages#home"
end

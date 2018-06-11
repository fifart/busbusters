Rails.application.routes.draw do
  devise_for :users
    as :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end 
  resources :availabilities, only: [:show, :update, :destroy, :new, :create, :edit]
  get '/ask', to: "pages#ask"
  get '/declare', to: "pages#declare"
  root "pages#home"
end

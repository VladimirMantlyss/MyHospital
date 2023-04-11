Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
  resources :patient_cards
  resources :specializations
  resources :departments
  resources :clinics
  resources :doctors
  resources :patients
  resources :my_patients
  # get '/home', to: 'home#index'
  root 'home#index'
  # get '/users/edit', to: 'users#edit', as: :edit_user

  devise_scope :user do
    get '/users/sign_out', to: 'devise/sessions#destroy'
  end

  # devise_scope :user do
  #   # ...
  #   get 'users/password/edit', to: 'devise/passwords#edit', as: :edit_user_password
  #   # ...
  # end


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

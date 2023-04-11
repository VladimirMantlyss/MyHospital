Rails.application.routes.draw do
  resources :patient_cards
  resources :specializations
  resources :departments
  resources :clinics
  resources :doctors
  resources :patients
  resources :my_patients
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end

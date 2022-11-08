Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :users

  resources :exercises

  resources :workouts
  
  resources :sessions

  resources :workout_details
  
  resources :categories
  
end

Rails.application.routes.draw do
  resources :students
  resources :marks
  resources :tests
  resources :courses
   
  root 'static#index'
end

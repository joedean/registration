Rails.application.routes.draw do
  resources :teachers
  resources :class_rooms
  resources :companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

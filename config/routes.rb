Rails.application.routes.draw do

  root to: 'courses#index'
  resources :courses, only: [:index, :show]
  # get 'courses/index'
  #
  # get 'courses/show/:id', to: 'courses#show'
  # resources :students, only: [:index, :show]
  get 'students/index', to: 'students#index', as: 'students'
  #
  # get 'students/show/:id', to: "students#show"
  get '/student/:id', to: 'students#show', as: 'student'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

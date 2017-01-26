Rails.application.routes.draw do
  resources :courses, only: [:index, :show]
  # get 'courses/index'
  #
  # get 'courses/show/:id', to: 'courses#show'

  resources :students, only: [:index, :show]
  # get 'students/index'
  #
  # get 'students/show/:id', to: "students#show"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

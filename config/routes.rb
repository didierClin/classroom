# == Route Map
#
#   Prefix Verb URI Pattern               Controller#Action
#     root GET  /                         courses#index
#  courses GET  /courses(.:format)        courses#index
#   course GET  /courses/:id(.:format)    courses#show
# students GET  /students/index(.:format) students#index
#  student GET  /student/:id(.:format)    students#show
#

Rails.application.routes.draw do

  root to: 'courses#index'
  resources :courses, only: [:index, :show]
  # get 'courses/index'
  #
  # get 'courses/show/:id', to: 'courses#show'
  resources :students, only: [:index, :show, :new, :create, :edit]
  # get 'students/index', to: 'students#index', as: 'students'
  # #
  # # get 'students/show/:id', to: "students#show"
  # get '/student/:id', to: 'students#show', as: 'student'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

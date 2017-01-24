Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html




  get "/users/new" => "users#new"
  
  post "/users" => "users#create"

  get "/users/:id" => "users#show"

  root 'welcome#index'


end

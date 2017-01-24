Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users

  get "/login" => "session#new"
  post "/login" => "session#create"
  get "/logout" => "session#destroy"
  


  root 'welcome#index'


end

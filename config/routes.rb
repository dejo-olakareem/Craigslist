Rails.application.routes.draw do
  get 'welcome/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users

  get "/login" => "session#new"
  post "/login" => "session#create"
  get "/logout" => "session#destroy"
  

  
  #Few ways to call only what you need without going crazy
  # get "/categories" => "categories#index"

  # get "/categories/:id" => "categories#show", as: :category
  # resources :categories, except: [:destroy, :update, :edit, :create, :new]
  # resources :categories, only: [:index, :show]
	# def self.resources(resource_name, options = {})

	# end 


	resources :categories, only: [:index, :show] do 
  	resources :articles, shallow: true
	end

  root 'welcome#index'


end
 
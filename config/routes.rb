Rails.application.routes.draw do

  
  
  get 'pages/home'
  devise_for :users
  
    


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root "articles#index"


  
  resources :articles do 
    resources  :comments
end
end

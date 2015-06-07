Rails.application.routes.draw do
  devise_for :users, :path_prefix =>'auth'
  resources :users
  resources :news do
  	member do 
  	  patch :publish
  	end
  end
  

  root 'news#index'

 
end

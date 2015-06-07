Rails.application.routes.draw do
  devise_for :users
  resources :news do
  	member do 
  	  patch :publish
  	end
  end

  root 'news#index'

 
end

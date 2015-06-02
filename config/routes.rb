Rails.application.routes.draw do
  resources :news do
  	member do 
  	  patch :publish
  	end
  end

  root 'news#index'

 
end

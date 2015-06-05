Rails.application.routes.draw do
  resources :news do
  	member do 
  	  patch :publish
  	end
  end

#scope "/api" do
#  resources :news
#end

  namespace :api do
  	resources :news, defaults: {format: :json}
  end

  root 'news#index'

 
end

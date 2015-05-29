Rails.application.routes.draw do
  resources :tally
  #root 'tally#index'
  root 'tally#index'

  resources :news
  
end

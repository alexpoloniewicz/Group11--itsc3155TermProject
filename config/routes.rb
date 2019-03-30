Rails.application.routes.draw do
  get 'sessions/new'
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  root   'welcome#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/data',    to: 'foods#index'
  get    '/filtered_data', to: 'foods#show'
  get    'add_food', to: "foods#new"
  resources :managers
end

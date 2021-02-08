# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  root 'recipes#index'
  
  resources :bookmarks
  resources :shopping_lists
  resources :ingredient_lists
  resources :users
  resources :recipes

  get '/imports', to: 'imports#new'
  post '/imports', to: 'imports#create'
  resources :ingredients
end

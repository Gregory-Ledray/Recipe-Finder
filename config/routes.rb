# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  get 'ingredients/index'
  root 'recipe#index'
  
  resources :bookmarks
  resources :recipe
  resources :shopping_lists
  resources :ingredient_lists

  get '/imports', to: 'imports#new'
  post '/imports', to: 'imports#create'
  resources :ingredients

  get '/recipe/new', to: 'recipe#new'
#   get '/bookmarks', to: 'bookmarks#get'
#   get '/what-can-i-make', to: 'what-can-i-make#get'
#   get '/shopping-list', to: 'shopping-list#get'
end

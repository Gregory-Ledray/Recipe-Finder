Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'discover#index'
  get '/discover', to: 'discover#index'
  get '/recipe/:id', to: 'recipe#index'
#   get '/add-recipe', to: 'add-recipe#get'
#   get '/bookmarks', to: 'bookmarks#get'
#   get '/what-can-i-make', to: 'what-can-i-make#get'
#   get '/shopping-list', to: 'shopping-list#get'
end

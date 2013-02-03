GoldenSeven::Application.routes.draw do
  root :to => 'Pictures#index'

  get '/pictures/new' => 'Pictures#new', :as => 'new_picture'
  post '/pictures' => 'Pictures#create', :as => 'pictures'

  get '/pictures' => 'Pictures#index', :as => 'pictures'
  get '/pictures/:id' => 'Pictures#show', :as => 'picture'

  get '/pictures/:id/edit' => 'Pictures#edit', :as => 'edit_picture'
  put '/pictures/:id' => 'Pictures#update', :as => 'picture'

  delete '/pictures/:id' => 'Pictures#destroy', :as => 'picture'
end

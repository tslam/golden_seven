GoldenSeven::Application.routes.draw do
  get '/pictures/new', :controller => 'Pictures', :action => 'new'
  post '/pictures', :controller => 'Pictures', :action => 'create'

  get '/pictures', :controller => 'Pictures', :action => 'index'
  get '/pictures/:id', :controller => 'Pictures', :action => 'show'

  get '/pictures/:id/edit', :controller => 'Pictures', :action => 'edit'
  put '/pictures/:id', :controller => 'Pictures', :action => 'update'

  delete '/pictures/:id', :controller => 'Pictures', :action => 'destroy'
end

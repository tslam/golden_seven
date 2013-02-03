GoldenSeven::Application.routes.draw do
  get '/pictures/new', :controller => 'Pictures', :action => 'new'
  post '/pictures', :controller => 'Pictures', :action => 'create'

  get '/pictures', :controller => 'Pictures', :action => 'index'
  get '/pictures/:id', :controller => 'Pictures', :action => 'show'
end

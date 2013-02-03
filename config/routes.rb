GoldenSeven::Application.routes.draw do
  get '/pictures/new', :controller => 'Pictures', :action => 'new'

  get '/pictures', :controller => 'Pictures', :action => 'index'
  get '/pictures/:id', :controller => 'Pictures', :action => 'show'
end

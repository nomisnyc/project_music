ProjectMusic::Application.routes.draw do
  root :to => "home#index"

resources :users, :only => [:index, :new, :create]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :musics #do
    # collection do
    #   get "counter"
    # end
  #end
  post 'musics/counter/:id' => 'musics#counter'


end

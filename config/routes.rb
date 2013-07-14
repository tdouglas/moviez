Moviez::Application.routes.draw do
  root :to => 'welcome#index'
  get '/movies/search' => 'movies#search', as: 'movies_search'
  get '/movies/:id/details' => 'movies#details', as: 'movies_details'
  get '/movies/:id/show' => 'movies#show', as: 'movies_show'
  post '/movies/:id/save' => 'movies#save', as: 'movies_save'
  post '/movies/:id/fave' => 'movies#fave', as: 'movies_fave'
  post '/movies/:id/rate_up' => 'movies#rate_up', as: 'movies_rate_up'
  post '/movies/:id/rate_down' => 'movies#rate_down', as: 'movies_rate_down'
  get '/movies' => 'movies#index', as: 'movies_all'


  # resources :movies
end

  # get '/movies' => 'movies#index', as: 'movies'
  # post '/movies' => 'movies#create'
  # get '/movies/new' => 'movies#new'
  # get '/movies/:id' => 'movies#show'
  # get '/movies/:id/edit' => 'movies#edit'
  # put '/movies/:id' => 'movies#update'
  # delete '/movies/:id' => 'movies#destroy'

  # get '/actors' => 'actors#index'
  # post '/actors' => 'actors#create'
  # get '/actors/new' => 'actors#new'
  # get '/actors/:id' => 'actors#show'
  # get '/actors/:id/edit' => 'actors#edit'
  # put '/actors/:id' => 'actors#update'
  # delete '/actors/:id' => 'actors#destroy'

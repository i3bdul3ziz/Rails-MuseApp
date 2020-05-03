Rails.application.routes.draw do
  # get 'albums/index'
  # get 'albums/new'
  # get 'albums/create'
  # get 'albums/destroy'
  # get 'albums/show'
  get 'artists/index'
  # get '/artists/index' to: 'artists#index'

  get 'artists/show'
  get 'artists/new'
  post 'artists/create'
  get 'artists/edit'
  patch 'artists/update'
  # get 'artists/delete'

  delete "artists/:id", to: "artists#delete"

  root 'artists#index'
  #  artists/1/albums/new
  resources :artists do # /artist/
    resources :albums # /artist/artist_id/albums/
  end

  # get '/', to: 'artists#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

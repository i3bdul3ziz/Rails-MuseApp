Rails.application.routes.draw do
 
  resources :songs 
  # /songs/1 GET DELETE PATCH PUT 
  # /songs/ POST GET

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

  # albums/1/songs
  resources :albums do # /artist/
    resources :songs # /artist/artist_id/albums/
  end

  # albums/11
  get "albums/option", to: "albums#option"
  resources :albums 

  
  # get '/', to: 'artists#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

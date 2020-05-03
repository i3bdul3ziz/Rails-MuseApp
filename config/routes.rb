Rails.application.routes.draw do
 
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

  get "albums/option", to: "albums#option"
  resources :albums 

  # get '/', to: 'artists#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

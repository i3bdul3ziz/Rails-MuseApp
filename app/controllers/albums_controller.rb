class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @album = Album.new
  end

  def create
  end

  def destroy
  end

  def show
    @album = Album.find(params[:id])
  end


end

class AlbumsController < ApplicationController
  def index
    @albums = Album.all
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @album = Album.new
  end

  def create
    @album = Album.new(album_params)
    # @artist = Artist.find(params[:artist_id])

    if @album.save
      redirect_to artists_path
    else
      render :new
    end
  end

  def destroy
  end

  def show
    @album = Album.find(params[:id])
  end

  private 
  def album_params
    params.require(:album).permit(:name, :cover, :year, :artist_id)
  end

end

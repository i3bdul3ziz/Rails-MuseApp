class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    # render json: @artists
    # render json: {"message": "Index page loaded"}
  end

  def show
    @artist = Artist.find(params[:id])
  end

  def new
    @artist = Artist.new
  end

  def create
    # params.require(:artist).permit
    # Whitelisting
    # Strong parameters
    Artist.create(params.require(:artist).permit(:name, :hometown, :img))
    redirect_to artists_path
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(params.require(:artist).permit(:name, :hometown, :img))
    redirect_to artists_path
  end

  def delete
    Artist.find(params[:id]).destroy
    redirect_to artists_path
  end
end

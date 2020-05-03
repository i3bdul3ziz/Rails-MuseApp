class ArtistsController < ApplicationController

  # before_action :set_artist, only: [:show]

  def index
    @artists = Artist.all
    # render json: @artists
    # render json: {"message": "Index page loaded"}
  end

  def new
    @artist = Artist.new
  end

  def create
    # params.require(:artist).permit
    # Whitelisting
    # Strong parameters
    Artist.create(artist_params)
    redirect_to artists_path
  end

  def edit

    @artist = Artist.find(params[:id])
  end

  def show
    begin
      @artist = Artist.find(params[:id])
    rescue ActiveRecord::RecordNotFound
      redirect_to artists_path
      
    end
  end

  def update
    artist = Artist.find(params[:id])
    artist.update(artist_params)
    redirect_to artists_path
  end

  def delete
    Artist.find(params[:id]).destroy
    redirect_to artists_path
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :hometown, :img)
  end
end

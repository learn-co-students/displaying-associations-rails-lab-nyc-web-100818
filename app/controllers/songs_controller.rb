class SongsController < ApplicationController
   before_action :find_song, except: [:index, :new]


  def index
    @songs = Song.all
    @artists = Artist.all
  end

  def show
    #render :show
  end

  def new
    @song = Song.new
    @artists = Artist.all
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def edit
    @artists = Artist.all
  end

  def update
    @song.update(song_params)

    if @song.save
      redirect_to @song
    else
      render :edit
    end
  end

  def destroy
    @song.destroy
    flash[:notice] = "Song deleted."
    redirect_to songs_path
  end

  private

  def song_params
    params.require(:song).permit(:title, :artist_id)
  end

  def find_song
    @song = Song.find(params[:id])
  end

end

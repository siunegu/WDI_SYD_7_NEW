class WelcomeController < ApplicationController
  def index
    @playlists = Playlist.order(:updated_at).limit(10)  	
  end
end

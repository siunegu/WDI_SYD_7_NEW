class PlaylistsController < ApplicationController
	def index
		@playlists = Playlist.all
	end	

	def show
		@playlist = Playlist.find params[:id]
	end

	def new
		@playlist = Playlist.new
	end

	def create
		@playlist = Playlist.new(playlist_params)
		if @playlist.save
			redirect_to @playlist
		else
			render 'new'
		end
	end

	def edit
		@playlist = Playlist.find params[:id]
	end

	def update
		@playlist = Playlist.find params[:id]
		if @playlist.update(Playlist_params)
			redirect_to @playlist
		else
			render 'edit'
		end	
	end

	def destroy
		@playlist = Playlist.find params[:id]
		@playlist.delete
	end

	private
	def playlist_params
  	params.require(:playlist).permit(
  	 :name
	 	 )		
	end
end

class PlaylistsController < ApplicationController
  # :authorize! has been defined for admin in ApplicationController
  before_action :authorize_admin!, except: [:index, :show]
  # authenticate_user! works for all users still
  before_action :authenticate_user!, only: [:new, :create]
	#except won't run on those things but runs everything else
	#Below: Only for edit, update and destroy, we scope it,
	# so that the only playlist the current_user can affect are these,
	# but any user can still view 'show'.
	before_action :find_playlist, only: [:edit, :update, :destroy]
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
		#'.new' is a specific method only available to class objects.
		@playlist = Playlist.new(playlist_params)
		#Below: Building new mixtape, scoped to the current users mixtapes
		#setting the user id, accessing their playlists,
		#and building a new playlist to that in concordance with the params.
		@playlist = current_user.playlists.build(playlist_params)

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
		if @playlist.update(playlist_params)
			redirect_to @playlist
		else
			render 'edit'
		end	
	end

	def destroy
		@playlist = Playlist.find params[:id]
		if @playlist.delete
		redirect_to playlists_path
		end
	end

	private #Everything below this is private

	def find_playlist
	#Below: if current user is an admin, show all of the 
	# entries, otherwise only find the current users' playlists.		
		if current_user.admin?
			@playlist = Playlist.find params[:id]
		else
			@playlist = current_user.playlists.find(params[:id])
		end		
	end

	def playlist_params
  	params.require(:playlist).permit(
  	 :name
	 	 )		
	end
end

class SongsController < ApplicationController
	def index
		@songs = Song.all
	end	

	def show
		@song = Song.find params[:id]
	end

	def new
		@song = Song.new
	end

	def create
		@song = Song.new(song_params)
		if @song.save
			redirect_to @song
		else
			render 'new'
		end
	end

	def edit
		@song = Song.find params[:id]
	end

	def update
		@song = Song.find params[:id]
		if @song.update(song_params)
			redirect_to @song
		else
			render 'edit'
		end	
	end

	def destroy
		@song = Song.find params[:id]
		@song.delete
	end

	private
	def artist_params
  	params.require(:recipe).permit(
  	 :name,
  	 :genre,
	 	 :year,
	 	 :artist_ids
	 	 )		
	end
end
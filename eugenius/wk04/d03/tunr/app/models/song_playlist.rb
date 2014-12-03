class PlaylistSongs < ActiveRecord::Base
	belongs_to :songs
	belongs_to :playlist
end

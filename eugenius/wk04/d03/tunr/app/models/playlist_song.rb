# == Schema Information
#
# Table name: playlist_songs
#
#  id          :integer          not null, primary key
#  song_id     :integer
#  playlist_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#

class PlaylistSong < ActiveRecord::Base
	belongs_to :playlist
	belongs_to :song
end

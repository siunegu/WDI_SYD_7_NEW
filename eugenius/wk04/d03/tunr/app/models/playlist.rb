# == Schema Information
#
# Table name: playlists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Playlist < ActiveRecord::Base
	belongs_to :user

	has_many :playlist_songs
	has_many :songs, through: :playlist_songs
end



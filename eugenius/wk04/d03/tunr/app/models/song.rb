# == Schema Information
#
# Table name: songs
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  genre      :string(255)
#  year       :integer
#  artist_id  :integer
#  created_at :datetime
#  updated_at :datetime
#

class Song < ActiveRecord::Base
	belongs_to :artist

	has_many :songs_playlists
	has_many :playlists, through: :songs_playlists
end

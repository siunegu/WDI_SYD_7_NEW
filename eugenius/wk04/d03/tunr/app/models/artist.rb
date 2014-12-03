# == Schema Information
#
# Table name: artists
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  label      :string(255)
#  location   :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Artist < ActiveRecord::Base
	has_many :songs
end

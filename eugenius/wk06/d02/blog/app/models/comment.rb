# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  content    :text
#  created_at :datetime
#  updated_at :datetime
#  post_id    :integer
#

class Comment < ActiveRecord::Base
	belongs_to :post
end

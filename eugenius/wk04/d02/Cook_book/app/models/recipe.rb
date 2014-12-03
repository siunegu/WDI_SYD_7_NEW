# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  cooktime     :string(255)
#  servingsize  :string(255)
#  instructions :string(255)
#  image        :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#

class Recipe < ActiveRecord::Base
	validates :instructions, length: {
		minimum: 200
	}
	validates :name, presence: true
	validates :course, presence: true
	validates :image, presence: true

	belongs_to :book

	has_many :ingredients_recipes
	#We use the ingredients_recipe table to 'jump through' to the ingredients table
	has_many :ingredients, through: :ingredients_recipes
end

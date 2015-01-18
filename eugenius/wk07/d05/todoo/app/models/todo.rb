# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  name       :string
#  done       :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Todo < ActiveRecord::Base
end

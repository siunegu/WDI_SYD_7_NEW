# == Schema Information
#
# Table name: todos
#
#  id         :integer          not null, primary key
#  text       :string
#  notes      :text
#  completed  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Todo < ActiveRecord::Base
end

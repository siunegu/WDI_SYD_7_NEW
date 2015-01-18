class AddExtraDetailsToUser < ActiveRecord::Migration
  def change
  	add_column :users, :subscribed, :boolean => false
  	add_column :users, :stripeid, :string
  end
end

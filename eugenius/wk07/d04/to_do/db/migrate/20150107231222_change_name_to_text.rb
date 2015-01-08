class ChangeNameToText < ActiveRecord::Migration
  def change
  	rename_column :todos, :name, :text
  end
end

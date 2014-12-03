class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
    	t.string :name
    	t.string :label
    	t.string :location

      t.timestamps
    end
  end
end

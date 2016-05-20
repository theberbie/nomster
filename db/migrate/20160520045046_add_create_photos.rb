class AddCreatePhotos < ActiveRecord::Migration
  def change
    add_column  :photos, :picture, :string
  
    add_index :photos, [:user_id, :place_id]
    add_index :photos, :place_id
  end
end

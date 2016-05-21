class CreatePhotos < ActiveRecord::Migration
  def change

    create_table :photos do |t|
      t.text :caption
      t.integer :user_id
      t.integer :place_id
      t.string :attachment
      end
      
    end
   
end

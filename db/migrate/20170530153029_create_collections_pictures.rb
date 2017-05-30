class CreateCollectionsPictures < ActiveRecord::Migration[5.0]
  def change
    create_table :collections_pictures, id: false do |t|
      t.integer :collection_id, null: false
      t.integer :picture_id, null: false
    end
  end
end

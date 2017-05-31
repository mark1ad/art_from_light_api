class CreatePicturesTags < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures_tags, id: false do |t|
      t.integer :picture_id, null: false
      t.integer :tag_id, null: false
    end
  end
end

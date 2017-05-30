class AddUrlColumnToCollections < ActiveRecord::Migration[5.0]
  def change
    add_column :collections, :url, :string
  end
end

class AddTitleAndDescriptionToCollections < ActiveRecord::Migration
  def change
    add_column :collections, :title,       :string
    add_column :collections, :description, :string
  end
end

class AddCollectionIdToImages < ActiveRecord::Migration
  def change
    add_reference :images, :collection, index: true
  end
end

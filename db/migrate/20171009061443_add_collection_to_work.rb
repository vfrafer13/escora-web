class AddCollectionToWork < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :collection, :int
  end
end

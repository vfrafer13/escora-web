class AddWarehouseToCollection < ActiveRecord::Migration[5.1]
  def change
    add_column :collections, :warehouse, :int
  end
end

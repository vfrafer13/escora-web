class AddWarehouseToWork < ActiveRecord::Migration[5.1]
  def change
    add_column :works, :warehouse, :int
  end
end

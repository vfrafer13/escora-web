class AddWorkToRestoration < ActiveRecord::Migration[5.1]
  def change
    add_column :restorations, :work, :int
  end
end

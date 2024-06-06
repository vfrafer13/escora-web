class CreateCollections < ActiveRecord::Migration[5.1]
  def change
    create_table :collections do |t|
      t.string :name
      t.string :description
      t.string :warehouse
      t.timestamps
    end
  end
end

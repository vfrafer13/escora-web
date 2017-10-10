class CreateRestorations < ActiveRecord::Migration[5.1]
  def change
    create_table :restorations do |t|
      t.string :reason
      t.string :responsible
      t.datetime :since
      t.datetime :until

      t.timestamps
    end
  end
end

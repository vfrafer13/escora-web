class CreateWorks < ActiveRecord::Migration[5.1]
  def change
    create_table :works do |t|
      t.string :name
      t.string :author
      t.string :dimensions
      t.string :technique
      t.string :year
      t.string :location
      t.string :status
      t.string :situation
      t.datetime :situation_since
      t.datetime :situation_until
      t.string :owner
      t.string :origin
      t.boolean :has_certificate
      t.string :certificate_picture
      t.string :certified_by
      t.float :value
      t.string :valuer
      t.string :warehouse
      t.string :collection
      t.timestamps
    end
  end
end

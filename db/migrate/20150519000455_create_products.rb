class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :url
      t.text :description
      t.integer :price
      t.string :picture
      t.string :title
      t.integer :product_id

      t.timestamps

    end
  end
end

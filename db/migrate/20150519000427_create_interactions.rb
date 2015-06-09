class CreateInteractions < ActiveRecord::Migration
  def change
    create_table :interactions do |t|
      t.boolean :like
      t.integer :product_id
      t.integer :user_id

      t.timestamps

    end
  end
end

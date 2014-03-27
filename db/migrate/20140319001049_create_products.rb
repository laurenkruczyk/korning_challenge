class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.decimal :product_price, null: false

      t.timestamps
    end
  end
end

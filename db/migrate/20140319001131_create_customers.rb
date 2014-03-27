class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :product_id, null: false
      t.integer :sale_id, null: false
      t.decimal :product_price_on_purchase, null: false

      t.timestamps
    end
  end
end

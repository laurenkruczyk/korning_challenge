class CreateProductSales < ActiveRecord::Migration
  def change
    create_table :product_sales do |t|
      t.integer :account_number, null: false
      t.string :website

      t.timestamps
    end
  end
end

class ChangeColumnsInCustomersAndProductSales < ActiveRecord::Migration
  def change

    # remove_column :customers, :product_id, :sale_id, :product_price_on_purchase
    # remove_column :product_sales, :account_number, :website

    change_table :product_sales do |t|
      t.integer :product_id, null: false
      t.integer :sale_id, null: false
      t.decimal :product_price_on_purchase, null: false
    end

    change_table :customers do |t|
      t.integer :account_number, null: false
      t.string :website
    end

    # add_column :customers, :account_number, :integer
    # add_column :customers, :website, :string
    # add_column :product_sales, :product_id, :integer, :sale_id, :integer, :product_price_on_purchase, :decimal

  end
end

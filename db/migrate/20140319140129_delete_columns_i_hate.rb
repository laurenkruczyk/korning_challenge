class DeleteColumnsIHate < ActiveRecord::Migration
  def change

    change_table :customers do |z|
      z.remove :sale_id, :product_price_on_purchase, :product_id
    end

    change_table :product_sales do |c|
      c.remove :website
    end

  end
end

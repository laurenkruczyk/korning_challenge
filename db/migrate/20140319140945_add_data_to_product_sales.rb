class AddDataToProductSales < ActiveRecord::Migration
  def change

   remove_column :product_sales, :account_number
   add_column :sales, :product_id, :integer
    # Sale.find_each do |sale|
    #   product = Product.find_by(name: sale.product_name)
    #   sale.product_id = product.id
    #   sale.save
    #   # sale.update_attribute(:product_id, product.id)
    # end

    ProductSale.reset_column_information

    Sale.find_each do |sale|
      unless ProductSale.exists?(sale: sale)
        product = Product.find_by(name: sale.product_name)
        # sale.product_id = product.id
        # sale.save
        ProductSale.create(sale: sale, product: product, product_price_on_purchase: (sale.sale_amount/sale.units_sold))

        puts "Product Sales #{sale.id} added"
       end
    end

  end
end

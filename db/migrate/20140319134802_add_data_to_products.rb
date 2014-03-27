class AddDataToProducts < ActiveRecord::Migration
  def change

    Product.reset_column_information
    Sale.find_each do |sale|
      unless Product.exists?(name: sale.product_name)
        Product.create(name: sale.product_name, product_price: (sale.sale_amount/sale.units_sold))
        puts "Product #{sale.product_name} created!"
      else
        puts "Product #{sale.product_name} already existed!"
      end
    end

  end
end

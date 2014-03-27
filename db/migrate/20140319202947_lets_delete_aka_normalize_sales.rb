class LetsDeleteAkaNormalizeSales < ActiveRecord::Migration
  def change
    change_table :sales do |laur|
      laur.remove :employee
      laur.remove :customer_and_account_no
      laur.remove :product_name
      laur.remove :invoice_no
      laur.remove :product_id
    end

  end
end

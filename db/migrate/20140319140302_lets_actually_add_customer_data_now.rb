class LetsActuallyAddCustomerDataNow < ActiveRecord::Migration
  def change

    Customer.reset_column_information

    Sale.find_each do |sale|
      unless Customer.exists?(account_number: sale.customer_and_account_no)
        Customer.create(account_number: sale.customer_and_account_no)

        puts "Employee #{sale.customer_and_account_no} added"
      end
    end

  end
end

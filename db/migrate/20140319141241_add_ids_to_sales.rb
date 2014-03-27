class AddIdsToSales < ActiveRecord::Migration
  def up
    change_table :sales do |t|
      t.integer  :employee_id
      t.integer  :customer_id
    end

    Sale.reset_column_information

    Sale.find_each do |sale|
        tokens = sale[:employee].split
        first_name = tokens[0]
        last_name = tokens[1]
        email = tokens[2]

        # unless Employee.exists?(email: email)

        sale.employee_id = Employee.find_by(first_name: first_name).id
        sale.customer_id = Customer.find_by(account_number: sale.customer_and_account_no).id
        sale.save
        # Sale.create(employee_id: employee_id, customer_id: customer_id)
        puts "You made Employee #{sale.employee_id}"
        puts "You made Customer #{sale.customer_id}"
      end
  end

  def down
    change_table :sales do |t|
      t.remove  :employee_id
      t.remove  :customer_id
    end
  end
end

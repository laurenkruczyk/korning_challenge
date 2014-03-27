class AddDataToEmployees < ActiveRecord::Migration
  def change
    Sale.find_each do |sale|
      tokens = sale[:employee].split
      first_name = tokens[0]
      last_name = tokens[1]
      email = tokens[2]

      unless Employee.exists?(email: email)
        Employee.create!(first_name: first_name, last_name: last_name, email: email)
        puts "Employee #{email} added"
      end
    end
  end
end

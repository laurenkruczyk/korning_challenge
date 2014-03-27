class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.integer :invoice_number, null: false
      t.integer :sale_id, null: false

      t.timestamps
    end
  end
end

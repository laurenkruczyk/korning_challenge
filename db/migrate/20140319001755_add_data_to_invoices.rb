class AddDataToInvoices < ActiveRecord::Migration
  def change

    Invoice.reset_column_information

    Sale.find_each do |sale|
      unless Invoice.exists?(invoice_number: sale.invoice_no)
        Invoice.create(invoice_number: sale.invoice_no, sale_id: sale.id)
        # Invoices.create(sale_id: sale.sale_id)
        puts "Invoice #{sale.invoice_no} created!"
      else
        puts "Invoice #{sale.invoice_no} already existed!"
      end
    end

  end
end

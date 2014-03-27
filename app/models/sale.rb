class Sale < ActiveRecord::Base
  belongs_to :employee
  has_many :product_sales
  has_many :products, through: :product_sales
  has_many :invoices
  belongs_to :customer

  validates :invoice_frequency, inclusion: { in: %w(once monthly yearly),
    message: "%{value} is not a valid invoice frequency" }
end

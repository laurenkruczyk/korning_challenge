class Customer < ActiveRecord::Base
  has_many :sales
  has_many :products, through: :sales
  has_many :invoices, through: :sales
end

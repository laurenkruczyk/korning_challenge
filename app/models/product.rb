class Product < ActiveRecord::Base
  has_many :product_sales
  has_many :sales, through: :product_sales
end

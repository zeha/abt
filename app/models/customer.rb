class Customer < ActiveRecord::Base
  attr_accessible :address, :matchcode, :name, :notes, :time_budget, :sales_tax_customer_class_id, :vat_id, :email

  validates :matchcode, :presence => true
  validates :email, :presence => true
  belongs_to :sales_tax_customer_class
  has_many :sales_tax_rates, :through => :sales_tax_customer_class
  has_many :invoices
end

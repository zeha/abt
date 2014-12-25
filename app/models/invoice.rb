class Invoice < ActiveRecord::Base
  attr_accessible :attachment_id, :cust_reference, :cust_order, :customer_id,
                  :customer_name, :customer_address, :customer_account_number, :customer_supplier_number, :customer_vat_id,
                  :date, :due_date, :document_number, :prelude, :project_id, :published,
                  :tax_classes, :sum_net, :sum_total, :tax_note
  validates :customer_id, :presence => true
  serialize :tax_classes
  default_scope :order => "id ASC"

  belongs_to :customer
  belongs_to :project
  belongs_to :attachment
  has_many :invoice_lines, :order => "id ASC"
end

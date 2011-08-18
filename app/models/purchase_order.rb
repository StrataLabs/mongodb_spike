class PurchaseOrder
  include Mongoid::Document
  field :amount, type: BigDecimal
  validates_presence_of :amount  
end

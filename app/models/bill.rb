class Bill
  include Mongoid::Document
  embeds_one :purchase_order
  field :amount, type: BigDecimal
end

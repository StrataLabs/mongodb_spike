class Order
  include Mongoid::Document
  field :amount, type: BigDecimal
  validates_presence_of :amount, :on => :create, :message => "can't be blank" 
end

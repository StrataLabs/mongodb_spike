require 'spec_helper'

describe PurchaseOrder do
  it {  should validate_presence_of (:amount) }
  it "should create a new purchase order" do
    po = PurchaseOrder.new
    po.amount = 20
    po.save.should == true
  end
end

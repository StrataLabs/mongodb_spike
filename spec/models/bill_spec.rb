require 'spec_helper'

describe Bill do

  it { should have_fields(:amount) }

  it { should embed_one :purchase_order }

  it "can omit a purchase orders" do
    bill = Bill.new
    bill.amount = 100
    bill.save
    retrieved_bill = Bill.first
    expected_bill = Bill.new
    expected_bill.write_attributes("_id" => Bill.first["_id"],
                                   :amount => 100)
    retrieved_bill.attributes.should == expected_bill.attributes
  end    

  it "saves related purchase orders" do
    bill = Bill.new
    po = PurchaseOrder.new
    po.amount = 20
    bill.purchase_order=po
    bill.save
    retrieved_bill = Bill.first
    retrieved_bill.purchase_order.should == po
  end    
end

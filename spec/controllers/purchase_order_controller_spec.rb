require 'spec_helper'

describe PurchaseOrderController do

  describe "POST 'create'" do
    it "should create a purchase order with an amount" do
      post 'create', :purchase_order => {:amount => 20}
      expected_po = expected_po(PurchaseOrder.first, {:amount => 20})
      should_be_equal(expected_po, PurchaseOrder.first)
      response.should be_success
    end
    
    it "should create purchase order with one aribitrary parameter" do
      post 'create', :purchase_order => {:amount => 20, :custom_field => "Custom"}
      expected_po = expected_po(PurchaseOrder.first, {:amount => 20,
                                                      :custom_field => "Custom"})
      should_be_equal(expected_po, PurchaseOrder.first)
      response.should be_success
    end
    
    it "should handle nested parameters" do
      post 'create', :purchase_order => {:amount => 20, :custom_group => {:custom_field => "Custom"}}
      expected_po = expected_po(PurchaseOrder.first, {:amount => 20,
                                                      :custom_group => {"custom_field" => "Custom"}})
      should_be_equal(expected_po, PurchaseOrder.first)
      response.should be_success
    end    
  end
  
  def should_be_equal(first_entity,second_entity)
    # With mongoid, doing an == will only do an identity check, not a deep equals      
    first_entity.attributes.should == second_entity.attributes
  end
  
  def expected_po(po,attributes)
    expected_po = PurchaseOrder.new
    expected_po.attributes = { "_id" => po["_id"]}
    expected_po.write_attributes(attributes)
    expected_po
  end    
end

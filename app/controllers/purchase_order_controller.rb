class PurchaseOrderController < ApplicationController

  def create
    po = PurchaseOrder.new
    add_fields(po,params[:purchase_order])
    po.save
  end
  
  def add_fields(po,po_params)
    po_params.each{|key,value| po[key.to_sym] = value }
  end  
end

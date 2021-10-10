class OrderSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :name, :amount, :price, :company_id, :company_name 
  belongs_to :company
end

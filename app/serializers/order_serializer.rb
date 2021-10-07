class OrderSerializer 
  include FastJsonapi::ObjectSerializer
  attributes :id, :name, :amount, :price, :company_id
  belongs_to :company
end

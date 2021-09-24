class OrderSerializer < ActiveModel::Serializer
  attributes :id, :amount, :price, :company_id
  belongs_to :company
end

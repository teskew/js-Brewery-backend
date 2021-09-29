class OrderSerializer < ActiveModel::Serializer
  attributes :id, :name, :amount, :price, :company_id
  belongs_to :company
end

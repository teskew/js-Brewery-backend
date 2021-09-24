class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :brewery_type, :city, :phone, :website_url
  has_many :orders
end

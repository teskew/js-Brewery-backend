class CompanySerializer 
  include FastJsonapi::ObjectSerializer
  attributes :name, :id

  has_many :orders
 end

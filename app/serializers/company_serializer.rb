class CompanySerializer 
  include FastJsonapi::ObjectSerializer
  attributes :name
  has_many :orders
 end

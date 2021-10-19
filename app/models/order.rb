class Order < ApplicationRecord
  belongs_to :company


  def company_name=(com_attribute)
   # byebug
    if !com_attribute.blank?
      self.company = Company.find_or_create_by(name: com_attribute.upcase) 
    end
  end

  def company_name
    self.company.name
  end

end
class Order < ApplicationRecord
  belongs_to :company

  # def naming
  #   self.name.upcase
  # end

  def company_name=(com_attribute)
   # byebug
    if !com_attribute.blank?
      self.company = company.find_or_create_by(name: com_attribute.upcase) 
    end
  end

  def company_name
    self.company.name
  end

end
class CompaniesController < ApplicationController
  def index
     companies = Company.all
     render json: companies
    #  render json: CompanySerializer.new(company, {include: [:names]})
  end

  

  


end

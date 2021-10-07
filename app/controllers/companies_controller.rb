class CompaniesController < ApplicationController
  def index
     companies = Company.all
    # render json: companies
     render json: CompanySerializer.new(companies)
  end
  
  def show 
    company = Company.find_by_id(params[:id])
    render json: company
   end

 def create  
    company = Company.new(company_params)
    if company.save 
        render json: CompanySerializer.new(company)
    else
        render json: {error: "Couldnt be saved"}
    end
end

private

def company_params 
     params.require(:company).permit(:name)
end

end

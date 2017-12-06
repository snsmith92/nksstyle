class Admin::CompaniesController < ApplicationController
  before_action :authenticate_user!

  def new
    @company = Company.new
  end 

  def create
    @company = current_user.companies.create(company_params)
    redirect_to admin_company_path(@company)
  end 

  def show
    @company = Company.find(params[:id])
  end 

  private

  def company_params
    params.require(:company).permit(:name, :description, :address, :phone, :email, :website, :facebook)
  end 
end

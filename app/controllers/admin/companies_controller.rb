class Admin::CompaniesController < ApplicationController
  before_action :authenticate_user!
  before_action :require_authorized_for_current_company, only: [:show]

  def new
    @company = Company.new
  end 

  def create
    @company = current_user.companies.create(company_params)
    redirect_to admin_company_path(@company)
  end 

  def show
    @servicegroup = Servicegroup.new 
  end 

  private

  helper_method :current_company
  def current_company
    @current_company ||= Company.find(params[:id])
  end 

  def require_authorized_for_current_company
    if current_company.user != current_user
      render plain: 'Unauthorized', status: :unauthorized
    end 
  end 

  def company_params
    params.require(:company).permit(:name, :description, :address, :phone, :email, :website, :facebook)
  end 
end

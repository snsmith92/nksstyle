class Admin::ServicegroupsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @servicegroup = Servicegroup.new 
  end 

  def create
    @company = Company.find(params[:company_id])
    @servicegroup = @company.servicegroups.create(servicegroup_params)
    redirect_to admin_company_path(@company)
  end 

  private

  def servicegroup_params
    params.require(:servicegroup).permit(:title)
  end 
end

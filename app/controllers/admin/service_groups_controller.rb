class Admin::ServiceGroupsController < ApplicationController
  def new
    @company = Company.find(params[:company_id])
    @service_group = ServiceGroup.new 
  end 

  def create
    @company = Company.find(params[:company_id])
    @service_group = @company.service_groups.create(service_group_params)
    redirect_to admin_company_path(@company)
  end 

  private

  def service_group_params
    params.require(:service_group).permit(:title)
  end 
end

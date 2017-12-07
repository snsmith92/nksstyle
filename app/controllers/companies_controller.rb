class CompaniesController < ApplicationController

  def index
    @companies = Company.all
  end 

  def show
    @company = Company.find(params[:id])
  end 

  private

  helper_method :current_company
  def current_company
    @current_company ||= Company.find(params[:id])
  end 
  
end

class Admin::CompaniesController < ApplicationController
  before_action :authenticate_user!

  def new
    @company = Company.new
  end 

end

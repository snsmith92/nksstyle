class StaticPagesController < ApplicationController

  def index
    @companies = Company.all.sample(6)
    #this is the same as above, for larger database @companies = Company.order("RANDOM()").limit(6)
  end 
  
end

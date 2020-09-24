class WelcomeController < ApplicationController

  def index
    @records = [House.all, ComplexBuilding.all, Commecial.all].flatten
    @records = @records.sort{|a,b| b[:created_at] <=> a[:created_at]}
  end 
end

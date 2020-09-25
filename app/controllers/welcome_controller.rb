class WelcomeController < ApplicationController

  def index
    @records = [House.all, ComplexBuilding.all, Commecial.all].flatten
    @records = @records.sort{|a,b| b[:created_at] <=> a[:created_at]}
  end
  
  def purchase
    case params[:type]
    when 'House'
      @data = House.find_by_id(params[:id])
    when 'ComplexBuilding'
      @data = ComplexBuilding.find_by_id(params[:id])
    when 'Commecial'
      @data = ComplexBuilding.find_by_id(params[:id])
    end

    if @data
  end

  private
  def purchase_params
  end
end

class CommecialsController < ApplicationController
  before_action :set_commecial, only: [:show, :edit, :update, :destroy]

  # GET /commecials
  # GET /commecials.json
  def index
    @commecials = Commecial.all
  end

  # GET /commecials/1
  # GET /commecials/1.json
  def show
  end

  # GET /commecials/new
  def new
    @commecial = Commecial.new
  end

  # GET /commecials/1/edit
  def edit
  end

  # POST /commecials
  # POST /commecials.json
  def create
    @commecial = Commecial.new(commecial_params)

    respond_to do |format|
      if @commecial.save
        format.html { redirect_to @commecial, notice: 'Commecial was successfully created.' }
        format.json { render :show, status: :created, location: @commecial }
      else
        format.html { render :new }
        format.json { render json: @commecial.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /commecials/1
  # PATCH/PUT /commecials/1.json
  def update
    respond_to do |format|
      if @commecial.update(commecial_params)
        format.html { redirect_to @commecial, notice: 'Commecial was successfully updated.' }
        format.json { render :show, status: :ok, location: @commecial }
      else
        format.html { render :edit }
        format.json { render json: @commecial.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /commecials/1
  # DELETE /commecials/1.json
  def destroy
    @commecial.destroy
    respond_to do |format|
      format.html { redirect_to commecials_url, notice: 'Commecial was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_commecial
      @commecial = Commecial.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def commecial_params
      params.require(:commecial).permit(:owner, :address, :shops, :units, :sqmt, :parking, :price, :float)
    end
end

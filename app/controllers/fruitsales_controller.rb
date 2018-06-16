class FruitsalesController < ApplicationController
  before_action :set_fruitsale, only: [:show, :edit, :update, :destroy]

  # GET /fruitsales
  # GET /fruitsales.json
  def index
    @fruitsales = Fruitsale.all
  end

  # GET /fruitsales/1
  # GET /fruitsales/1.json
  def show
  end

  # GET /fruitsales/new
  def new
    @fruitsale = Fruitsale.new
  end

  # GET /fruitsales/1/edit
  def edit
  end

  # POST /fruitsales
  # POST /fruitsales.json
  def create
    @fruitsale = Fruitsale.new(fruitsale_params)

    respond_to do |format|
      if @fruitsale.save
        format.html { redirect_to @fruitsale, notice: 'Fruitsale was successfully created.' }
        format.json { render :show, status: :created, location: @fruitsale }
      else
        format.html { render :new }
        format.json { render json: @fruitsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fruitsales/1
  # PATCH/PUT /fruitsales/1.json
  def update
    respond_to do |format|
      if @fruitsale.update(fruitsale_params)
        format.html { redirect_to @fruitsale, notice: 'Fruitsale was successfully updated.' }
        format.json { render :show, status: :ok, location: @fruitsale }
      else
        format.html { render :edit }
        format.json { render json: @fruitsale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fruitsales/1
  # DELETE /fruitsales/1.json
  def destroy
    @fruitsale.destroy
    respond_to do |format|
      format.html { redirect_to fruitsales_url, notice: 'Fruitsale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fruitsale
      @fruitsale = Fruitsale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fruitsale_params
      params.require(:fruitsale).permit(:customer_id, :fruit_id, :saleprice, :purchasedate, :status, :purchase_id, :created_at, :updated_at)
    end
end

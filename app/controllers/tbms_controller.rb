class TbmsController < ApplicationController
  before_action :set_tbm, only: [:show, :edit, :update, :destroy]

  # GET /tbms
  # GET /tbms.json
  def index
    @tbms = Tbm.all
  end

  # GET /tbms/1
  # GET /tbms/1.json
  def show
  end

  # GET /tbms/new
  def new
    @tbm = Tbm.new
  end

  # GET /tbms/1/edit
  def edit
  end

  # POST /tbms
  # POST /tbms.json
  def create
    @tbm = Tbm.new(tbm_params)

    respond_to do |format|
      if @tbm.save
        format.html { redirect_to @tbm, notice: 'Tbm was successfully created.' }
        format.json { render :show, status: :created, location: @tbm }
      else
        format.html { render :new }
        format.json { render json: @tbm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tbms/1
  # PATCH/PUT /tbms/1.json
  def update
    respond_to do |format|
      if @tbm.update(tbm_params)
        format.html { redirect_to @tbm, notice: 'Tbm was successfully updated.' }
        format.json { render :show, status: :ok, location: @tbm }
      else
        format.html { render :edit }
        format.json { render json: @tbm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tbms/1
  # DELETE /tbms/1.json
  def destroy
    @tbm.destroy
    respond_to do |format|
      format.html { redirect_to tbms_url, notice: 'Tbm was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tbm
      @tbm = Tbm.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tbm_params
      params.require(:tbm).permit(:name, :add, :kin)
    end
end

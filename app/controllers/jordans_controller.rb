class JordansController < ApplicationController
  before_action :set_jordan, only: [:show, :edit, :update, :destroy]

  # GET /jordans
  # GET /jordans.json
  def index
    @jordans = Jordan.all
  end

  # GET /jordans/1
  # GET /jordans/1.json
  def show
  end

  # GET /jordans/new
  def new
    @jordan = Jordan.new
  end

  # GET /jordans/1/edit
  def edit
  end

  # POST /jordans
  # POST /jordans.json
  def create
    @jordan = Jordan.new(jordan_params)

    respond_to do |format|
      if @jordan.save
        format.html { redirect_to @jordan, notice: 'Jordan was successfully created.' }
        format.json { render :show, status: :created, location: @jordan }
      else
        format.html { render :new }
        format.json { render json: @jordan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jordans/1
  # PATCH/PUT /jordans/1.json
  def update
    respond_to do |format|
      if @jordan.update(jordan_params)
        format.html { redirect_to @jordan, notice: 'Jordan was successfully updated.' }
        format.json { render :show, status: :ok, location: @jordan }
      else
        format.html { render :edit }
        format.json { render json: @jordan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jordans/1
  # DELETE /jordans/1.json
  def destroy
    @jordan.destroy
    respond_to do |format|
      format.html { redirect_to jordans_url, notice: 'Jordan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jordan
      @jordan = Jordan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def jordan_params
      params.require(:jordan).permit(:name, :description, :picture)
    end
end

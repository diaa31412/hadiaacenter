class ImageheadersController < ApplicationController
  before_action :set_imageheader, only: [:show, :edit, :update, :destroy]

  # GET /imageheaders
  # GET /imageheaders.json
  def index
    @imageheaders = Imageheader.all
  end

  # GET /imageheaders/1
  # GET /imageheaders/1.json
  def show
  end

  # GET /imageheaders/new
  def new
    @imageheader = Imageheader.new
  end

  # GET /imageheaders/1/edit
  def edit
  end

  # POST /imageheaders
  # POST /imageheaders.json
  def create
    @imageheader = Imageheader.new(imageheader_params)

    respond_to do |format|
      if @imageheader.save
        format.html { redirect_to @imageheader, notice: 'Imageheader was successfully created.' }
        format.json { render :show, status: :created, location: @imageheader }
      else
        format.html { render :new }
        format.json { render json: @imageheader.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imageheaders/1
  # PATCH/PUT /imageheaders/1.json
  def update
    respond_to do |format|
      if @imageheader.update(imageheader_params)
        format.html { redirect_to @imageheader, notice: 'Imageheader was successfully updated.' }
        format.json { render :show, status: :ok, location: @imageheader }
      else
        format.html { render :edit }
        format.json { render json: @imageheader.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageheaders/1
  # DELETE /imageheaders/1.json
  def destroy
    @imageheader.destroy
    respond_to do |format|
      format.html { redirect_to imageheaders_url, notice: 'Imageheader was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imageheader
      @imageheader = Imageheader.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imageheader_params
      params.require(:imageheader).permit(:picture)
    end
end

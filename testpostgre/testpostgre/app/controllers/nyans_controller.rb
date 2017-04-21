class NyansController < ApplicationController
  before_action :set_nyan, only: [:show, :edit, :update, :destroy]

  # GET /nyans
  # GET /nyans.json
  def index
    @nyans = Nyan.all
  end

  # GET /nyans/1
  # GET /nyans/1.json
  def show
  end

  # GET /nyans/new
  def new
    @nyan = Nyan.new
  end

  # GET /nyans/1/edit
  def edit
  end

  # POST /nyans
  # POST /nyans.json
  def create
    @nyan = Nyan.new(nyan_params)

    respond_to do |format|
      if @nyan.save
        format.html { redirect_to @nyan, notice: 'Nyan was successfully created.' }
        format.json { render :show, status: :created, location: @nyan }
      else
        format.html { render :new }
        format.json { render json: @nyan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nyans/1
  # PATCH/PUT /nyans/1.json
  def update
    respond_to do |format|
      if @nyan.update(nyan_params)
        format.html { redirect_to @nyan, notice: 'Nyan was successfully updated.' }
        format.json { render :show, status: :ok, location: @nyan }
      else
        format.html { render :edit }
        format.json { render json: @nyan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nyans/1
  # DELETE /nyans/1.json
  def destroy
    @nyan.destroy
    respond_to do |format|
      format.html { redirect_to nyans_url, notice: 'Nyan was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nyan
      @nyan = Nyan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nyan_params
      params.fetch(:nyan, {})
    end
end

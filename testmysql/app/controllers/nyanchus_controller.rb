class NyanchusController < ApplicationController
  before_action :set_nyanchu, only: [:show, :edit, :update, :destroy]

  # GET /nyanchus
  # GET /nyanchus.json
  def index
    @nyanchus = Nyanchu.all
  end

  # GET /nyanchus/1
  # GET /nyanchus/1.json
  def show
  end

  # GET /nyanchus/new
  def new
    @nyanchu = Nyanchu.new
  end

  # GET /nyanchus/1/edit
  def edit
  end

  # POST /nyanchus
  # POST /nyanchus.json
  def create
    @nyanchu = Nyanchu.new(nyanchu_params)

    respond_to do |format|
      if @nyanchu.save
        format.html { redirect_to @nyanchu, notice: 'Nyanchu was successfully created.' }
        format.json { render :show, status: :created, location: @nyanchu }
      else
        format.html { render :new }
        format.json { render json: @nyanchu.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nyanchus/1
  # PATCH/PUT /nyanchus/1.json
  def update
    respond_to do |format|
      if @nyanchu.update(nyanchu_params)
        format.html { redirect_to @nyanchu, notice: 'Nyanchu was successfully updated.' }
        format.json { render :show, status: :ok, location: @nyanchu }
      else
        format.html { render :edit }
        format.json { render json: @nyanchu.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nyanchus/1
  # DELETE /nyanchus/1.json
  def destroy
    @nyanchu.destroy
    respond_to do |format|
      format.html { redirect_to nyanchus_url, notice: 'Nyanchu was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nyanchu
      @nyanchu = Nyanchu.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nyanchu_params
      params.fetch(:nyanchu, {})
    end
end

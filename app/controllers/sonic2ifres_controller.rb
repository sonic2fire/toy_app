class Sonic2ifresController < ApplicationController
  before_action :set_sonic2ifre, only: [:show, :edit, :update, :destroy]

  # GET /sonic2ifres
  # GET /sonic2ifres.json
  def index
    @sonic2ifres = Sonic2ifre.all
  end

  # GET /sonic2ifres/1
  # GET /sonic2ifres/1.json
  def show
  end

  # GET /sonic2ifres/new
  def new
    @sonic2ifre = Sonic2ifre.new
  end

  # GET /sonic2ifres/1/edit
  def edit
  end

  # POST /sonic2ifres
  # POST /sonic2ifres.json
  def create
    @sonic2ifre = Sonic2ifre.new(sonic2ifre_params)

    respond_to do |format|
      if @sonic2ifre.save
        format.html { redirect_to @sonic2ifre, notice: 'Sonic2ifre was successfully created.' }
        format.json { render :show, status: :created, location: @sonic2ifre }
      else
        format.html { render :new }
        format.json { render json: @sonic2ifre.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sonic2ifres/1
  # PATCH/PUT /sonic2ifres/1.json
  def update
    respond_to do |format|
      if @sonic2ifre.update(sonic2ifre_params)
        format.html { redirect_to @sonic2ifre, notice: 'Sonic2ifre was successfully updated.' }
        format.json { render :show, status: :ok, location: @sonic2ifre }
      else
        format.html { render :edit }
        format.json { render json: @sonic2ifre.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sonic2ifres/1
  # DELETE /sonic2ifres/1.json
  def destroy
    @sonic2ifre.destroy
    respond_to do |format|
      format.html { redirect_to sonic2ifres_url, notice: 'Sonic2ifre was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sonic2ifre
      @sonic2ifre = Sonic2ifre.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sonic2ifre_params
      params.require(:sonic2ifre).permit(:sonic2fire@gmail.com)
    end
end

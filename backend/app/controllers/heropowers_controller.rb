class HeropowersController < ApplicationController
  before_action :set_heropower, only: %i[ show edit update destroy ]

  # GET /heropowers or /heropowers.json
  def index
    @heropowers = Heropower.all
  end

  # GET /heropowers/1 or /heropowers/1.json
  def show
  end

  # GET /heropowers/new
  def new
    @heropower = Heropower.new
  end

  # GET /heropowers/1/edit
  def edit
  end

  # POST /heropowers or /heropowers.json
  def create
    @heropower = Heropower.new(heropower_params)

    respond_to do |format|
      if @heropower.save
        format.html { redirect_to heropower_url(@heropower), notice: "Heropower was successfully created." }
        format.json { render :show, status: :created, location: @heropower }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @heropower.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /heropowers/1 or /heropowers/1.json
  def update
    respond_to do |format|
      if @heropower.update(heropower_params)
        format.html { redirect_to heropower_url(@heropower), notice: "Heropower was successfully updated." }
        format.json { render :show, status: :ok, location: @heropower }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @heropower.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /heropowers/1 or /heropowers/1.json
  def destroy
    @heropower.destroy

    respond_to do |format|
      format.html { redirect_to heropowers_url, notice: "Heropower was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_heropower
      @heropower = Heropower.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def heropower_params
      params.require(:heropower).permit(:strength, :hero_id, :power_id)
    end
end

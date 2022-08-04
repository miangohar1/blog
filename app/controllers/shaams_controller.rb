class ShaamsController < ApplicationController
  before_action :set_shaam, only: %i[ show edit update destroy ]

  # GET /shaams or /shaams.json
  def index
    @shaams = Shaam.all
  end

  # GET /shaams/1 or /shaams/1.json
  def show
  end

  # GET /shaams/new
  def new
    @shaam = Shaam.new
  end

  # GET /shaams/1/edit
  def edit
  end

  # POST /shaams or /shaams.json
  def create

    @shaam = Shaam.new(shaam_params)

    respond_to do |format|
      if @shaam.save
        format.html { redirect_to shaam_url(@shaam), notice: "Shaam was successfully created." }
        format.json { render :show, status: :created, location: @shaam }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @shaam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shaams/1 or /shaams/1.json
  def update
    respond_to do |format|
      if @shaam.update(shaam_params)
        format.html { redirect_to shaam_url(@shaam), notice: "Shaam was successfully updated." }
        format.json { render :show, status: :ok, location: @shaam }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @shaam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shaams/1 or /shaams/1.json
  def destroy
    @shaam.destroy

    respond_to do |format|
      format.html { redirect_to shaams_url, notice: "Shaam was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shaam
      @shaam = Shaam.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def shaam_params
      params.require(:shaam).permit(:title, :image, pictures: [])
    end
end

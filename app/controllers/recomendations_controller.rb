class RecomendationsController < ApplicationController
  before_action :set_recomendation, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  load_and_authorize_resource
  # GET /recomendations or /recomendations.json
  def index
    @recomendations = Recomendation.all
  end

  # GET /recomendations/1 or /recomendations/1.json
  def show
    @recomendation = Recomendation.find(params[:id])
  end

  # GET /recomendations/new
  def new
    @recomendation = current_user.recomendations.build
  end

  # GET /recomendations/1/edit
  def edit
  end

  # POST /recomendations or /recomendations.json
  def create
    @recomendation = current_user.recomendations.build(recomendation_params)

    respond_to do |format|
      if @recomendation.save
        format.html { redirect_to recomendation_url(@recomendation), notice: "Recomendation was successfully created." }
        format.json { render :show, status: :created, location: @recomendation }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recomendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recomendations/1 or /recomendations/1.json
  def update
    respond_to do |format|
      if @recomendation.update(recomendation_params)
        format.html { redirect_to recomendation_url(@recomendation), notice: "Recomendation was successfully updated." }
        format.json { render :show, status: :ok, location: @recomendation }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recomendation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recomendations/1 or /recomendations/1.json
  def destroy
    @recomendation.destroy

    respond_to do |format|
      format.html { redirect_to recomendations_url, notice: "Recomendation was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recomendation
      @recomendation = Recomendation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recomendation_params
      params.require(:recomendation).permit(:title, :body)
    end
end

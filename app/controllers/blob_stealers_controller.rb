class BlobStealersController < ApplicationController
  before_action :set_blob_stealer, only: %i[ show edit update destroy ]

  # GET /blob_stealers or /blob_stealers.json
  def index
    @blob_stealers = BlobStealer.all
  end

  # GET /blob_stealers/1 or /blob_stealers/1.json
  def show
  end

  # GET /blob_stealers/new
  def new
    @blob_stealer = BlobStealer.new
  end

  # GET /blob_stealers/1/edit
  def edit
  end

  # POST /blob_stealers or /blob_stealers.json
  def create
    @blob_stealer = BlobStealer.new(blob_stealer_params)

    respond_to do |format|
      if @blob_stealer.save
        format.html { redirect_to blob_stealer_url(@blob_stealer), notice: "Blob stealer was successfully created." }
        format.json { render :show, status: :created, location: @blob_stealer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @blob_stealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /blob_stealers/1 or /blob_stealers/1.json
  def update
    respond_to do |format|
      if @blob_stealer.update(blob_stealer_params)
        format.html { redirect_to blob_stealer_url(@blob_stealer), notice: "Blob stealer was successfully updated." }
        format.json { render :show, status: :ok, location: @blob_stealer }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @blob_stealer.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /blob_stealers/1 or /blob_stealers/1.json
  def destroy
    @blob_stealer.destroy!

    respond_to do |format|
      format.html { redirect_to blob_stealers_url, notice: "Blob stealer was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_blob_stealer
      @blob_stealer = BlobStealer.find(params[:id])
      @blob_stealer.hacker = Hacker.find(params[:hacker_id]) if params[:hacker_id]
    end

    # Only allow a list of trusted parameters through.
    def blob_stealer_params
      params.require(:blob_stealer).permit(:title, :stolen_id, :stolen_purpose, :stolen_signed_id)
    end
end

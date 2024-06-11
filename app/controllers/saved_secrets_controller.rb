class SavedSecretsController < ApplicationController
  before_action :set_saved_secret, only: %i[ show edit update destroy ]

  # GET /saved_secrets or /saved_secrets.json
  def index
    @saved_secrets = SavedSecret.all
  end

  # GET /saved_secrets/1 or /saved_secrets/1.json
  def show
  end

  # GET /saved_secrets/new
  def new
    @saved_secret = SavedSecret.new
  end

  # GET /saved_secrets/1/edit
  def edit
  end

  # POST /saved_secrets or /saved_secrets.json
  def create
    @saved_secret = SavedSecret.new(saved_secret_params)

    respond_to do |format|
      if @saved_secret.save
        format.html { redirect_to saved_secret_url(@saved_secret), notice: "Saved secret was successfully created." }
        format.json { render :show, status: :created, location: @saved_secret }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @saved_secret.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /saved_secrets/1 or /saved_secrets/1.json
  def update
    respond_to do |format|
      if @saved_secret.update(saved_secret_params)
        format.html { redirect_to saved_secret_url(@saved_secret), notice: "Saved secret was successfully updated." }
        format.json { render :show, status: :ok, location: @saved_secret }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @saved_secret.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /saved_secrets/1 or /saved_secrets/1.json
  def destroy
    @saved_secret.destroy!

    respond_to do |format|
      format.html { redirect_to saved_secrets_url, notice: "Saved secret was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_saved_secret
      @saved_secret = SavedSecret.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def saved_secret_params
      params.require(:saved_secret).permit(:title, :saved_skb)
    end
end

class ExternalsController < ApplicationController
  before_action :set_external, only: [:show, :edit, :update, :destroy]

  # GET /externals
  # GET /externals.json
  def index
    @externals = External.all.order("created_at DESC")
  end

  # GET /externals/1
  # GET /externals/1.json
  def show
  end

  # GET /externals/new
  def new
    @external = current_user.externals.build
  end

  # GET /externals/1/edit
  def edit
  end

  # POST /externals
  # POST /externals.json
  def create
    @external = current_user.externals.build(external_params)

    respond_to do |format|
      if @external.save
        format.html { redirect_to @external, notice: "External was successfully created." }
        format.json { render :show, status: :created, location: @external }
      else
        format.html { render :new }
        format.json { render json: @external.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /externals/1
  # PATCH/PUT /externals/1.json
  def update
    respond_to do |format|
      if @external.update(external_params)
        format.html { redirect_to @external, notice: "External was successfully updated." }
        format.json { render :show, status: :ok, location: @external }
      else
        format.html { render :edit }
        format.json { render json: @external.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /externals/1
  # DELETE /externals/1.json
  def destroy
    @external.destroy
    respond_to do |format|
      format.html { redirect_to externals_url, notice: "External was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_external
    @external = External.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def external_params
    params.require(:external).permit(:name, :amount)
  end
end

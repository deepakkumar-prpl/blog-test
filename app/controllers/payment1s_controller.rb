class Payment1sController < ApplicationController
  before_action :set_payment1, only: %i[ show edit update destroy ]

  # GET /payment1s or /payment1s.json
  def index
    @payment1s = Payment1.all
  end

  # GET /payment1s/1 or /payment1s/1.json
  def show
  end

  # GET /payment1s/new
  def new
    @payment1 = Payment1.new
  end

  # GET /payment1s/1/edit
  def edit
  end

  # POST /payment1s or /payment1s.json
  def create
    @payment1 = Payment1.new(payment1_params)

    respond_to do |format|
      if @payment1.save
        format.html { redirect_to payment1_url(@payment1), notice: "Payment1 was successfully created." }
        format.json { render :show, status: :created, location: @payment1 }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @payment1.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /payment1s/1 or /payment1s/1.json
  def update
    respond_to do |format|
      if @payment1.update(payment1_params)
        format.html { redirect_to payment1_url(@payment1), notice: "Payment1 was successfully updated." }
        format.json { render :show, status: :ok, location: @payment1 }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @payment1.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /payment1s/1 or /payment1s/1.json
  def destroy
    @payment1.destroy

    respond_to do |format|
      format.html { redirect_to payment1s_url, notice: "Payment1 was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_payment1
      @payment1 = Payment1.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def payment1_params
      params.require(:payment1).permit(:amount, :description, :currency)
    end
end

class NumbersController < ApplicationController
  before_action :set_number, only: [:show, :edit, :update, :destroy]
  skip_before_action :verify_authenticity_token

  # GET /numbers
  # GET /numbers.json
  def index
    @numbers = current_user.numbers.order('created_at DESC')
  end

  # GET /numbers/1
  # GET /numbers/1.json
  def show
    @numbers = current_user.numbers.find(params[:id]) rescue redirect_to(numbers_path)
  end

  def find
    @number = Number.new
  end

  # GET /numbers/new
  def new
    @number = Number.new
  end

  # GET /numbers/1/edit
  def edit
    redirect_to numbers_path
  end

  # POST /numbers
  # POST /numbers.json
  def create
    @number = current_user.numbers.new(number_params)

    respond_to do |format|
      if @number.save_with_payment
        format.html { redirect_to new_facility_path, notice: 'Thank you for your purchase. Now set up your first facility using your new hotline.' }
        format.json { render action: 'show', status: :created, location: @number }
      else
        format.html { render action: 'new' }
        format.json { render json: @number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /numbers/1
  # PATCH/PUT /numbers/1.json
  def update
    respond_to do |format|
      if @number.update(number_params)
        format.html { redirect_to @number, notice: 'Number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /numbers/1
  # DELETE /numbers/1.json
  def destroy
    @number.destroy
    respond_to do |format|
      format.html { redirect_to numbers_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_number
      @number = Number.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def number_params
      params.require(:number).permit(:number)
    end
end

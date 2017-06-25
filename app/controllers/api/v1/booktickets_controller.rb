require 'json'
class Api::V1::BookticketsController < ApplicationController
  before_action :set_bookticket, only: [:show, :update, :destroy]
  #protect_from_forgery with: :null_session
  # GET /booktickets
  def index
    @booktickets = Bookticket.all

    render json: @booktickets
  end

  # GET /booktickets/1
  def show
    render json: @bookticket
  end

  # POST /booktickets
  def create
    @bookticket = Bookticket.new(bookticket_params)

    if @bookticket.save
      render json: @bookticket, status: :created, location: @bookticket
    else
      render json: @bookticket.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /booktickets/1
  def update
    if @bookticket.update(bookticket_params)
      render json: @bookticket
    else
      render json: @bookticket.errors, status: :unprocessable_entity
    end
  end

  # DELETE /booktickets/1
  def destroy
    @bookticket.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bookticket
      @bookticket = Bookticket.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def bookticket_params
      params.require(:bookticket).permit(:name, :age, :aticket, :cticket, :tdate, :hour, :from, :to, :proof, :cost)
    end
end

class BusesController < ApplicationController
  before_action :set_bus, only: [:show, :update, :destroy]

  # GET /buses
  def index
    @buses = Bus.all

    render json: @buses
  end

  # GET /buses/1
  def show
    render json: @bus
  end

  # POST /buses
  def create
    @bus = Bus.new(bus_params)
    if @bus.save
      render json: @bus, status: :created, location: @bus
      200
    else
      render json: @bus.errors, status: :unprocessable_entity
      500
    end
  end

  def update_load
    puts "busein"
    # @bus = Bus.find_by(prefix:params[:prefix])
    puts "busao"
    redirect_to buses_update_path
  end

  # PATCH/PUT /buses/1
  def update
    puts 'BUSAO'
    # puts params[:bus]
    if @bus.update(bus_params)
      render json: @bus
    else
      render json: @bus.errors, status: :unprocessable_entity
    end
  end

  # DELETE /buses/1
  def destroy
    @bus.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_bus
      puts params[:prefix]
      @bus = Bus.find_by(params[:prefix])
      puts @bus
      @bus
    end

    # Only allow a trusted parameter "white list" through.
    def bus_params
      params.require(:bus).permit(:prefix, :line, :load, :arrival_time, :py, :px)
    end
end

class SleepCyclesController < ApplicationController
  before_action :set_sleep_cycle, only: [:show, :edit, :update, :destroy]

  # GET /sleep_cycles
  # GET /sleep_cycles.json
  def index
    @sleep_cycles = SleepCycle.all
  end

  # GET /sleep_cycles/1
  # GET /sleep_cycles/1.json
  def show
  end

  # GET /sleep_cycles/new
  def new
    @sleep_cycle = SleepCycle.new
  end

  # GET /sleep_cycles/1/edit
  def edit
  end

  # POST /sleep_cycles
  # POST /sleep_cycles.json
  def create
    @sleep_cycle = SleepCycle.new(sleep_cycle_params)

    respond_to do |format|
      if @sleep_cycle.save
        format.html { redirect_to @sleep_cycle, notice: 'Sleep cycle was successfully created.' }
        format.json { render :show, status: :created, location: @sleep_cycle }
      else
        format.html { render :new }
        format.json { render json: @sleep_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sleep_cycles/1
  # PATCH/PUT /sleep_cycles/1.json
  def update
    respond_to do |format|
      if @sleep_cycle.update(sleep_cycle_params)
        format.html { redirect_to @sleep_cycle, notice: 'Sleep cycle was successfully updated.' }
        format.json { render :show, status: :ok, location: @sleep_cycle }
      else
        format.html { render :edit }
        format.json { render json: @sleep_cycle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sleep_cycles/1
  # DELETE /sleep_cycles/1.json
  def destroy
    @sleep_cycle.destroy
    respond_to do |format|
      format.html { redirect_to sleep_cycles_url, notice: 'Sleep cycle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sleep_cycle
      @sleep_cycle = SleepCycle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sleep_cycle_params
      params.require(:sleep_cycle).permit(:cycle_name, :days, :user_id)
    end
end

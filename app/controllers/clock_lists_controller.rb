class ClockListsController < ApplicationController
  before_action :set_clock_list, only: %i[ show edit update destroy ]

  # GET /clock_lists or /clock_lists.json
  def index
    @clock_lists = ClockList.all
  end

  # GET /clock_lists/1 or /clock_lists/1.json
  def show
  end

  # GET /clock_lists/new
  def new
    @clock_list = ClockList.new
  end

  # GET /clock_lists/1/edit
  def edit
  end

  # POST /clock_lists or /clock_lists.json
  def create
    @clock_list = ClockList.new(clock_list_params)

    respond_to do |format|
      if @clock_list.save
        format.html { redirect_to clock_list_url(@clock_list), notice: "Clock list was successfully created." }
        format.json { render :show, status: :created, location: @clock_list }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @clock_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clock_lists/1 or /clock_lists/1.json
  def update
    respond_to do |format|
      if @clock_list.update(clock_list_params)
        format.html { redirect_to clock_list_url(@clock_list), notice: "Clock list was successfully updated." }
        format.json { render :show, status: :ok, location: @clock_list }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @clock_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clock_lists/1 or /clock_lists/1.json
  def destroy
    @clock_list.destroy!

    respond_to do |format|
      format.html { redirect_to clock_lists_url, notice: "Clock list was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock_list
      @clock_list = ClockList.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clock_list_params
      params.fetch(:clock_list, {})
    end
end

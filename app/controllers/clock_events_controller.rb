class ClockEventsController < ApplicationController
  before_action :set_clock_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /clock_events
  # GET /clock_events.json
  def index
    @clock_events = ClockEvent.all
  end

  # GET /clock_events/1
  # GET /clock_events/1.json
  def show
  end

  # GET /clock_events/new
  def new
    @clock_event = ClockEvent.new
  end

  # GET /clock_events/1/edit
  def edit
  end

  # POST /clock_events
  # POST /clock_events.json
  def create
    @clock_event = ClockEvent.new(clock_event_params)

    respond_to do |format|
      if @clock_event.save
        format.html { redirect_to @clock_event, notice: 'Clock event was successfully created.' }
        format.json { render :show, status: :created, location: @clock_event }
      else
        format.html { render :new }
        format.json { render json: @clock_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clock_events/1
  # PATCH/PUT /clock_events/1.json
  def update
    respond_to do |format|
      if @clock_event.update(clock_event_params)
        format.html { redirect_to @clock_event, notice: 'Clock event was successfully updated.' }
        format.json { render :show, status: :ok, location: @clock_event }
      else
        format.html { render :edit }
        format.json { render json: @clock_event.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clock_events/1
  # DELETE /clock_events/1.json
  def destroy
    @clock_event.destroy
    respond_to do |format|
      format.html { redirect_to clock_events_url, notice: 'Clock event was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_clock_event
      @clock_event = ClockEvent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def clock_event_params
      params.require(:clock_event).permit(:time_in, :time_out)
    end
end

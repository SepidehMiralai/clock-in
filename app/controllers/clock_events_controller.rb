class ClockEventsController < ApplicationController
  before_action :set_clock_event, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_action :check_user, only: [:edit, :update, :destroy]

  # GET /clock_events
  # GET /clock_events.json
  def teacher
    @clock_events = ClockEvent.where(user: current_user).order("created_at DESC")
  end

  def index
    if params[:search]
      @clock_events = ClockEvent.search(params[:search]).order("created_at DESC")
    else
      # @clock_events = ClockEvent.all.order("created_at DESC")
      @clock_events = ClockEvent.paginate(page: params[:page], per_page: 3)
    end
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
    @clock_event = ClockEvent.find(params[:id])
  end

  # POST /clock_events
  # POST /clock_events.json
  def create
    @clock_event = ClockEvent.new(clock_event_params)
    @clock_event.user_id = current_user.id
    @current_user = current_user

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

    def check_user
      unless (@clock_event.user == current_user) || (current_user.admin?)
        redirect_to root_path, alert: "Sorry, this clock event belongs to someone else!"
      end
    end

    # Only allow a list of trusted parameters through.
    def clock_event_params
      params.require(:clock_event).permit(:time_logged, :clock_in)
    end
end

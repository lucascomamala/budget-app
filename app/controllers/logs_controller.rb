class LogsController < ApplicationController
  before_action :set_log, only: %i[show edit update destroy]

  # GET /logs
  def index
    @group = Group.find(params[:group_id])
    @logs = @group.logs
  end

  # GET /logs/1
  def show
    @group = Group.find(params[:group_id])
  end

  # GET /logs/new
  def new
    @log = Log.new
  end

  # GET /logs/1/edit
  def edit
    @group = Group.find(params[:group_id])
  end

  # POST /logs
  def create
    @log = Log.new(log_params)
    if @log.save
      redirect_to log_url(@log), notice: 'Log was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /logs/1
  def update
    @group = Group.find(params[:group_id])
    if @log.update(log_params)
      redirect_to group_log_url(@group, @log), notice: 'Log was successfully updated.'
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # DELETE /logs/1
  def destroy
    @log.destroy
    redirect_to logs_url, notice: 'Log was successfully destroyed.'
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_log
    @log = Log.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def log_params
    params.require(:log).permit(:name, :amount, :user_id)
  end
end

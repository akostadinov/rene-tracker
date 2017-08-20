class ReportsController < ApplicationController
  before_action :set_reports
  before_action :set_report, only: [:show, :edit, :update, :destroy]

  # GET volunteers/1/reports
  def index
    @reports = @volunteers.reports
  end

  # GET volunteers/1/reports/1
  def show
  end

  # GET volunteers/1/reports/new
  def new
    @report = @volunteers.reports.build
  end

  # GET volunteers/1/reports/1/edit
  def edit
  end

  # POST volunteers/1/reports
  def create
    @report = @volunteers.reports.build(report_params)

    if @report.save
      redirect_to([@report.volunteers, @report], notice: 'Report was successfully created.')
    else
      render action: 'new'
    end
  end

  # PUT volunteers/1/reports/1
  def update
    if @report.update_attributes(report_params)
      redirect_to([@report.volunteers, @report], notice: 'Report was successfully updated.')
    else
      render action: 'edit'
    end
  end

  # DELETE volunteers/1/reports/1
  def destroy
    @report.destroy

    redirect_to volunteers_reports_url(@volunteers)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reports
      @volunteers = Volunteer.find(params[:volunteers_id])
    end

    def set_report
      @report = @volunteers.reports.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def report_params
      params.require(:report).permit(:date, :rc, :ec, :rm)
    end
end

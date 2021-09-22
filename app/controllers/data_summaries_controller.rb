class DataSummariesController < ApplicationController
  before_action :set_data_summary, only: %i[ show edit update destroy ]

  # GET /data_summaries or /data_summaries.json
  def index
    @data_summaries = DataSummary.all

    @data_summaries= HTTParty.get "https://moat.ai/api/task/",
    headers: {
      "Basic ZGV2ZWxvcGVyOlpHVjJaV3h2Y0dWeQ==" => "https://moat.ai/api/task/"

    }
  end

  # GET /data_summaries/1 or /data_summaries/1.json
  def show
  end

  # GET /data_summaries/new
  def new
    @data_summary = DataSummary.new
  end

  # GET /data_summaries/1/edit
  def edit
  end

  # POST /data_summaries or /data_summaries.json
  def create
    @data_summary = DataSummary.new(data_summary_params)

    respond_to do |format|
      if @data_summary.save
        format.html { redirect_to @data_summary, notice: "Data summary was successfully created." }
        format.json { render :show, status: :created, location: @data_summary }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @data_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_summaries/1 or /data_summaries/1.json
  def update
    respond_to do |format|
      if @data_summary.update(data_summary_params)
        format.html { redirect_to @data_summary, notice: "Data summary was successfully updated." }
        format.json { render :show, status: :ok, location: @data_summary }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @data_summary.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_summaries/1 or /data_summaries/1.json
  def destroy
    @data_summary.destroy
    respond_to do |format|
      format.html { redirect_to data_summaries_url, notice: "Data summary was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_data_summary
      @data_summary = DataSummary.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def data_summary_params
      params.require(:data_summary).permit(:data)
    end
end

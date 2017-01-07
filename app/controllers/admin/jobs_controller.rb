class Admin::JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end

  private

  def job_params
    params.require(:job).permit(:title, :description)
  end
end

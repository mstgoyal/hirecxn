class RecruiterController < ApplicationController

  def index
    # @candidate_list = Candidate.all
    @job_list = Job.all
  end

  def job
    job = New_job.new
    job.logo = params["logo_url"]
    job.company = params["company"]
    job.role = params["role"]
    job.id = params["id"]
    job.save
    redirect_to "/recruiter/payment", notice: "Make a payment and continue on your way!"
  end

  def edit
    @job = Job.find_by(:id => params[:job_id])
  end

end

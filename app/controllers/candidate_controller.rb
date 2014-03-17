class CandidateController < ApplicationController

#so everytime you use an "=" you are reassigning the variable right? so inbetween the methods of "new" and "update" these are actaully completely separate variables which have been reset after the command is over?
  def index
    @candidate_list = Candidate.all
  end

  def show
    @candidate = Candidate.find_by(:id => params[:candidate_id])
  end


  def new
    resume = Candidate.new
  end

  def create
    resume = Candidate.new
    resume.name = params["name"]
    resume.photo_url = params["photo_url"]
    resume.company = params["company"]
    resume.role = params["role"]
    resume.city = params["city"]
    resume.save
    redirect_to "/candidate", notice: "Success.  You have completed your profile! Please scroll to the bottom to see your Profile"
  end

  def destroy
    candidate = Candidate.find_by(:id => params[:candidate_id])
    candidate.destroy
    redirect_to "/candidate", notice: "We are sorry to see you go.  Your profile has been successfully deleted!"
  end

  def edit
    @candidate = Candidate.find_by(:id => params[:candidate_id])
  end


  def update
    cand = Candidate.find_by(:id => params[:candidate_id])
    cand.name = params["name"]
    cand.photo_url = params["photo_url"]
    cand.company = params["company"]
    cand.role = params["role"]
    cand.city = params["city"]
    cand.save
    redirect_to "/candidate", notice: "Success.  You have updated your profile!"
  end

  def destroy
    delete = Candidate.find_by(:id => params[:candidate_id])
    delete.destroy
    redirect_to "/candidate", notice: "We are sorry to see you go"
  end

end



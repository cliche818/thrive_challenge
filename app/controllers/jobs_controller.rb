class JobsController < ApplicationController
  def index
    jobs = JobsProvider.combinations
    render json: jobs
  end
end

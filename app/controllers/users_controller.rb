class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @jobs = current_user.jobs
    @archived = @jobs.archived
    @active_jobs = @jobs.active
  end
end

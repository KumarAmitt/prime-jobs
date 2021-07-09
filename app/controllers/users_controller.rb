class UsersController < ApplicationController
  before_action :authenticate_user!

  def profile
    @jobs = current_user.jobs
  end
end

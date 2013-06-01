class ProfilesController < ApplicationController
  before_filter :authenticate_user!
  # before_filter :grab_profile

  def index
    unless Profile.nil?
      @profiles = Profile.all
    else
      @profiles = []
    end
  end

  def show
    @profile
  end

  private

  def grab_profile
    @profile = current_user.profile
  end

end

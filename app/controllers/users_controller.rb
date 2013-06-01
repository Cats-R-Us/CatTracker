class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_filter :grab_user

  def show
    @user
  end

  private

  def grab_user
    @user = current_user
  end
end

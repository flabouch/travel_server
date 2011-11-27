class HomeController < ApplicationController
  def index
    @user = User.new
    @user.build_profile
  end
end

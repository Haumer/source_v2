class DashboardsController < ApplicationController
  def show
    @user = User.find_by_githubname(params[:user])
    @dashboard = @user.dashboard
  end
end

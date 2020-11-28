class DashboardsController < ApplicationController
  def show
    user = User.find_by_githubname(params[:slug])
  end
end

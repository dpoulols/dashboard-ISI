class DashboardController < ApplicationController
  def index
    @dashboard = Dashboard.all
  end

  def show
    @dashboard = Dashboard.find(params[:id])
  end
end

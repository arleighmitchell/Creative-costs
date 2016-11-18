class HomeController < ApplicationController
  def index
  	@reports = current_user.reports.reverse
  end
end

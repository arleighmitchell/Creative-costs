class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  	if current_user
  	@reports = current_user.reports.reverse
  	end
  end
  def delete_report
  	@report = Report.find(params["report_id"])
  	@report.destroy

  	redirect_to '/'
  end
end

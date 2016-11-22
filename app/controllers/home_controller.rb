class HomeController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
  	if current_user
  	 @reports = current_user.reports.reverse
     @users = User.all
  	end
  end

end

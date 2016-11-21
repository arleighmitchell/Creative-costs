class TeachersController < ApplicationController

	def show
		@teacher = User.find(params[:id])
		@reports = @teacher.reports.reverse
	end

end

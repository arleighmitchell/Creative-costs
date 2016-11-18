class ReportsController < ApplicationController
	skip_before_action :verify_authenticity_token
	
	def show
		@report = Report.find(params[:id])
		@price = @report.items.sum(:price)
		@quantity = @report.items.sum(:quantity)
		@total = @price * @quantity
	end

	def new
		@reports = current_user.reports.reverse
	end

	def create
		params.inspect

		user_id = current_user.id
		name = params[:name]

		Report.create(user_id: user_id,
					name:   name
					)

		redirect_to new_report_path
	end

	def item_add
		report = Report.find(params["report_id"])

		product_name = params[:product_name]
    	price = params[:price]
    	quantity = params[:quantity]
    
    	Item.create(report_id: 	  report.id.to_i,
    				product_name: product_name,
    				price: 		  price,
    				quantity: 	  quantity
    				)

    	redirect_to :back
	end

end
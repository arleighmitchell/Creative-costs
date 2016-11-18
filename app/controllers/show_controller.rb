class ShowController < ApplicationController
	skip_before_action :verify_authenticity_token

	def item_add
		report = Report.find(params[:id])
		report_id = report.id
		product_name = params[:product_name]
    	price = params[:price]
    	quantity = params[:quantity]
    
    	Item.create(report_id: 	  report_id,
    				product_name: product_name,
    				price: 		  price,
    				quantity: 	  quantity
    				)

    	redirect_to new_report_path
	end
end

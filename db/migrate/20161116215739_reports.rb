class Reports < ActiveRecord::Migration
  def change
  	create_table :reports do |t|
  		t.integer :user_id
  		t.string :name
  	end

  	create_table :items do |t|
  		t.integer :report_id
  		t.string :product_name
  		t.integer :price
  		t.integer :quantity
  	end
  end
end

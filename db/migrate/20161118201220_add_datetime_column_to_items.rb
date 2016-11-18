class AddDatetimeColumnToItems < ActiveRecord::Migration
  def change
  	add_column :items, :created_at, :datetime
  end
end

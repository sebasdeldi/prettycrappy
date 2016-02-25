class AddDeservedsCountToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :deserveds_count, :integer, default: 0
  end
end

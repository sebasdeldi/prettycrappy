class AddDeservedsCountToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :deserveds_count, :integer, default: 0
  end
end

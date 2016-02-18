class AddDefaultValueToPostsSex < ActiveRecord::Migration
  def change
  	change_column :posts, :sex, :string, :default => "Other"
  end
end

class AddDefaultValueToPostsAlias < ActiveRecord::Migration
  def change
  	change_column :posts, :alias, :string, :default => "Anonymous"
  end
end

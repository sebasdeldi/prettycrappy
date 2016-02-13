class AddSexToPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :sex, :string
  end
end

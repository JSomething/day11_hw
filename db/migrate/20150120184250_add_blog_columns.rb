class AddBlogColumns < ActiveRecord::Migration
  def change
  	add_column :blogs, :title, :string
  	add_column :blogs, :subject, :string
  	add_column :blogs, :content, :string
  end
end

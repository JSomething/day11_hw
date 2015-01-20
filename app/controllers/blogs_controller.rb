class BlogsController < ApplicationController
	def new
		@blog = Blog.new
	end

	def create
		@blog = Blog.create blog_params
		redirect_to root_path
	end

	def blog_params
		params.require(:blog).permit(:title, :subject, :content)
	end

	def edit
		@blog = Blog.find params[:id]
	end

	def update
		@blog = Blog.find params[:id]
		@blog.update_attributes blog_params
		redirect_to root_path
	end

	def show
		@blog = Blog.find params[:id]
	end

	def destroy
		@blog = Blog.find params[:id]
		@blog.delete
		redirect_to root_path
	end

end

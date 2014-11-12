class PostsController < ApplicationController

	def index
		@posts = Post.all
	end

	def new
		@post = Post.new
	end

	def create
		
	end

	def show
		@post = Post.find(params[:id])
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
	end

	def delete
		@post = Post.find(params[:id])

	end

	private

	def post_params
		params.require(:posts).permit(:title, :text, :image,)
	end
end

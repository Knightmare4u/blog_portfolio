class PostsController < ApplicationController
	before_action :find_post, only: [:show, :edit, :update, :destroy]
	def index
		@posts = Post.all.order("created_at desc")
	end

	def new
		@post = Post.new	
	end

	def create
		@post = Post.new post_params

		if @post.save
			redirect_to @post, notice: "post has been saved"
		else
			render 'new', notice: "Post could NOT be saved"
		end
	end

	def show
		 @post = Post.friendly.find(params[:id])
	end

	def edit
		
	end

	def update
		if @post.update post_params
			redirect_to @post, notice: "Your article has been updated"
		else
			render 'edit'
		end
		
	end

		def destroy
  		@post.destroy
  		redirect_to posts_url, status: :see_other, notice: "Post was successfully destroyed."
	end

	def find_post
		@post = Post.friendly.find(params[:id])
		end
	end

    public

	def  post_params
		params.require(:post).permit(:title, :content, :slug)
	end
		
	




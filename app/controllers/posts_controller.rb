class PostsController < ApplicationController
	respond_to :html, :js
	def index
		@posts = Post.all
	end
	def new
		@user = User.find(current_user)
		@post = Post.new
		@post.user = @user

	end
	def create
		@posts = Post.all
		@post = Post.create(post_params)
	end
	private
	def post_params
		params.require(:post).permit(:content, :user_id, :chatroom_id)
	end
	def chatroom_posts
		@chatroom = Chatroom.find(params[:id])
		@posts = @chatroom.posts
	end
end
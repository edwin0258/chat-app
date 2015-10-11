class ChatroomsController < ApplicationController
	respond_to :html, :js
	def index
		@chatrooms = Chatroom.all
	end
	def show
		@chatroom = Chatroom.find(params[:id])
		@posts = @chatroom.posts
	end
=begin
	def post
		@user = User.find(current_user)
		@chatroom = Chatroom.find(params[:id])
		post = Post.create(content: params[:content], user: @user, chatroom: @chatroom)
	end
	private
	def post_params
		params.require(:post).permit(:content)
	end
	def chatroom_posts
		@chatroom = Chatroom.find(params[:id])
		@posts = @chatroom.posts
	end
=end
end
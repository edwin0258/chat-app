class Chatroom < ActiveRecord::Base
	has_many :posts
end
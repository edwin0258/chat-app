require 'rails_helper'

RSpec.feature "List out available chatrooms" do 

	before do
		@chat1 = Chatroom.create(name: "Main", summary: "The main chatroom")
	end

	scenario do

		visit "/"

		expect(page).to have_content(@chat1.name)
		expect(page).to have_content(@chat1.summary)
	end	
end
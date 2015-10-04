require 'rails_helper'

RSpec.feature "Sign a user in" do

	before do
		@user = User.create(email: "john@example.com", password: "password")
	end

	scenario "With valid credentials" do
		visit "/"

		click_link "Sign in"

		expect(page).to have_content("Sign in")
		fill_in "Email", with: @user.email
		fill_in "Password", with: @user.password
		click_button "Sign in"
		#now redirected to home page
		expect(page).to have_content(@user.email)
	end
end
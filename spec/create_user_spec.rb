require 'rails_helper'

RSpec.feature "Sign a user up" do

	scenario "With valid credentials" do

		visit "/"
		click_link "Sign up"

		expect(page).to have_content("Register")
		fill_in "Email", with: "John@example.com"
		fill_in "Password", with: "password"
		fill_in "Password confirmation", with: "password"

		click_button "Sign up"
	end
end
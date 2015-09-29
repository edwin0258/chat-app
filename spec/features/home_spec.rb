require 'rails_helper'


RSpec.feature "Visit home page" do
	scenario do

	visit "/"

	expect(page).to have_content("Chat App")
	expect(page).to have_content("Welcome to the site")
	#navbar
	expect(page).to have_link("Sign in")
	expect(page).to have_link("Sign up")
	expect(page).to have_link("Home")

	end
end
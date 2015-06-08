require 'rails_helper'

RSpec.describe "users/show", type: :view, focus: false do
	before(:each) do
		@user = assign(:user, User.create!(
			:name			=> "Name",
			:email		=> "Email@example.com",
			:password => "belorofonte",
			:password_confirmation => "belorofonte"
		))
	end

	it "renders attributes in <p>" do
		render
		expect(rendered).to match(/Name/)
		expect(rendered).to match(/email@example.com/)
	end
end

require 'spec_helper'

describe "Authentication" do
	subject { page }
	describe "signin page" do
		before {visit signin_path}
		it {should have_selector('title', text: full_title('Sign in'))}
		it {should have_selector('div.alert.alert-error', text: 'Invalid email/password combination')}
	end

	describe 'signin' do
		before {visit signin_path}
		describe "with valid information" do
			let(:user) {FactoryGirl.create(:user)}
			before do 
				fill_in "Email",	with: user.email
				fill_in "Password",	with: user.password
				click_button "Sign In"
			end

			it { should have_selector('title', text: user.name) }
			it { should have_link('Profile', href: user_path(user)) }
			it { should have_link('Sign Out', href: signout_path) }
			it { should_not have_link('Sign In', href: signin_path)}
		end
	end
end
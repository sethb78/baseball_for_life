include ApplicationHelper

RSpec::Matchers.define :have_error_message do |message|
  match do |page|
    page.should have_selector('div.alert.alert-error', text: message)
  end
end

def sign_in(user)
  fill_in "Email",    with: user.email
  fill_in "Password", with: user.password
  click_button "Sign in"
    # Sign in when not using Capybara.
  cookies[:remember_token] = user.remember_token
end

def signup
	fill_in "Name", 				with: "Example User"
  fill_in "Email", 				with: "user@example.com"
  fill_in "Password", 		with: "foobar"
  fill_in "Confirmation", with: "foobar"

end
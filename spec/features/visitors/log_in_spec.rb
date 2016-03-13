require "rails_helper"

feature "Log In" do
  let(:user) { create :user }

  scenario "Visitor signs in with valid credentials" do
    sign_in(user.email, user.password)

    expect(page).to have_content("Sign out")
  end

  scenario "Visitor signs in with invalid credentials" do
    sign_in(user.email, "wrong password")

    expect(page).to have_content("Log in")
    expect(page).to have_content("Invalid email or password")
  end
end

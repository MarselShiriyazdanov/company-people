require "rails_helper"

feature "Log In" do
  let(:user) { create :user }
  let(:unconfirmed_user) { create :user, :not_confirmed }

  def sign_in(email, password)
    visit new_user_session_path

    fill_form(:user, email: email, password: password)
    click_button "Log in"
  end

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

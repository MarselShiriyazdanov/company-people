require "rails_helper"

feature "Add company to favorite" do
  let(:user) { create :user }
  let!(:company) { create :company }

  background do
    sign_in(user.email, user.password)
  end

  scenario "User adds company to favorite", js: true do
    find('.glyphicon-heart-empty').click
    visit favorites_path

    expect(page).to have_content(company.name)
  end
end

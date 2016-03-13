require "rails_helper"

feature "Add person to favorite" do
  let(:user) { create :user }
  let(:company) { create :company }
  let!(:person) { create :person, company: company }

  background do
    sign_in(user.email, user.password)
  end

  scenario "User adds person to favorite", js: true do
    visit company_path(company)
    find('.glyphicon-heart-empty').click
    visit favorites_path

    expect(page).to have_content(person.first_name)
  end
end

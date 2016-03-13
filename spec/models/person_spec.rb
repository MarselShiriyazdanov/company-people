require 'rails_helper'

RSpec.describe Person, type: :model do
  it { is_expected.to belong_to(:company) }
  it { is_expected.to have_one(:favorite) }
end

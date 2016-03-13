require 'rails_helper'

RSpec.describe Company, type: :model do
  it { is_expected.to have_many(:people) }
  it { is_expected.to have_one(:favorite) }
end

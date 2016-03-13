require 'rails_helper'

RSpec.describe Favorite, type: :model do
  it { is_expected.to belong_to(:favoritable) }
end

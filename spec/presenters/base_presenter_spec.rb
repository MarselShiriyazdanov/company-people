require "rails_helper"

RSpec.describe BasePresenter do
  subject { BasePresenter.wrap(company) }

  describe "#favorite_icon_class" do
    context "when favorite exists" do
      let(:company) { double(favorite: true) }

      its(:favorite_icon_class) { is_expected.to eq('fav glyphicon glyphicon-heart') }
    end

    context "when favorite does not exist" do
      let(:company) { double(favorite: nil) }

      its(:favorite_icon_class) { is_expected.to eq('fav glyphicon glyphicon-heart-empty') }
    end
  end
end

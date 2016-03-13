require "rails_helper"

describe CreateOrDeleteFavorite do
  let(:person) { create :person }
  let(:company) { create :company }

  describe ".call" do
    context "when favorite is present" do
      let!(:favorite) { person.create_favorite }
      let(:params) { { object: favorite.favoritable_type, id: favorite.id } }

      it "deletes favorite" do
        expect{ CreateOrDeleteFavorite.call(params: params) }.to change{ Favorite.count }.from(1).to(0)
      end
    end

    context "when there is no favorite" do
      let(:params) { { object: "Company", id: company.id } }

      it "create favorite" do
        expect{ CreateOrDeleteFavorite.call(params: params) }.to change{ Favorite.count }.from(0).to(1)
      end
    end
  end
end

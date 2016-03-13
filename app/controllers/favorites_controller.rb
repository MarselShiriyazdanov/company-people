class FavoritesController < ApplicationController
  respond_to :json, only: :create

  def index
    @companies = Favorite.companies.order('created_at DESC')
    @people = Favorite.people.order('created_at DESC')
  end

  def create
    CreateOrDeleteFavorite.call(params: params)

    render nothing: true, status: 200
  end
end

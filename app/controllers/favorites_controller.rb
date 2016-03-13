class FavoritesController < ApplicationController
  before_action :set_favorite, only: [:show, :edit, :update, :destroy]
  respond_to :json, only: :create

  def index
    @companies = Favorite.companies.order('created_at DESC')
    @people = Favorite.people.order('created_at DESC')
  end

  def show
  end

  def create
    CreateOrDeleteFavorite.call(params: params)

    render nothing: true, status: 200
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_favorite
      @favorite = Favorite.find(params[:id])
    end
end

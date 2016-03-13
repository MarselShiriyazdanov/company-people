class CreateOrDeleteFavorite
  include Interactor

  delegate :params, :favorite, to: :context

  before do
    context.favorite = Favorite.find_or_initialize_by(favoritable_type: params[:object], favoritable_id: params[:id])
  end

  def call
    favorite.new_record? ? favorite.save! : favorite.destroy!
  end
end

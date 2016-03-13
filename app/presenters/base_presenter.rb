class BasePresenter
  def self.wrap(object)
    if object.respond_to?(:map)
      object.map { |el| new(el) }
    else
      new(object)
    end
  end

  def initialize(object)
    @object = object
  end

  def favorite_icon_class
    @object.favorite ? 'fav glyphicon glyphicon-heart' : 'fav glyphicon glyphicon-heart-empty'
  end
end

class CompanyPresenter < BasePresenter
  attr_reader :object

  delegate :name, :country_code, :id, to: :object

  def country
    Country[object.country_code].name
  end
end

class PeoplePresenter < BasePresenter
  attr_reader :object

  delegate :first_name, :last_name, :id, to: :object
end

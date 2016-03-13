class Person < ActiveRecord::Base
  belongs_to :company
  has_one :favorite, as: :favoritable
end

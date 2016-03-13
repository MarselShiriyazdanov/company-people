class Company < ActiveRecord::Base
  has_many :people
  has_one :favorite,  as: :favoritable
end

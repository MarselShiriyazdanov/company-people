class Favorite < ActiveRecord::Base
  belongs_to :favoritable, polymorphic: true

  validates :favoritable_id, uniqueness: { scope: :favoritable_type }

  scope :companies, -> { Company.where(id: where(favoritable_type: 'Company')) }
  scope :people, -> { Person.where(id: where(favoritable_type: 'Person')) }
end

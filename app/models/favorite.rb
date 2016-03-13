class Favorite < ActiveRecord::Base
  belongs_to :favoritable, polymorphic: true

  validates :favoritable_id, uniqueness: { scope: :favoritable_type }
end

class Ingredient < ApplicationRecord
  has_many :doses #dependent: :restrict_with_error
  before_destroy :check_for_doses

  validates :name, presence: true, uniqueness: true
end

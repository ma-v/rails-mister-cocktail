class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses

  validates :name, presence: true, uniqueness: true
  mount_uploader :photo, PhotoUploader

  # def self.search(search)
  #   if search
  #     if Cocktail.where(name: search).any?
  #       Cocktail.where(name: search)
  #     else
  #       Cocktail.all
  #     end
  #   else
  #     Cocktail.all
  #   end
  # end
end

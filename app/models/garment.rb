class Garment < ApplicationRecord
  paginates_per 1
  belongs_to :brand
  belongs_to :garment_type

  def garmentdetails
  garment_type.name + " " + brand.name + ", " + color + ", " + description
end
end

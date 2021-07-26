class Vestment < ApplicationRecord
  belongs_to :emmision
  belongs_to :host
  belongs_to :garment
end

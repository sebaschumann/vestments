class Emmision < ApplicationRecord
paginates_per 1
  def numberdate
  number

  has_many :vestments
end
end

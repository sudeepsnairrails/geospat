class Ticket < ApplicationRecord
  has_many :excavators

  def get_geocode
    return well_known_text.remove('POLYGON').remove('(').remove(')').split(',').map(&:to_f).each_slice(2).to_a
  end
end

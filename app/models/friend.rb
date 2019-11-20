class Friend < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo
  def age
    return if birth_date.nil?
    
    (Date.today - birth_date.to_date).abs.round / 365
  end

end

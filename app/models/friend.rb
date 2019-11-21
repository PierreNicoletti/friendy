class Friend < ApplicationRecord
  has_many :bookings
  belongs_to :user
  has_one_attached :photo

  geocoded_by :address do |obj, results|
    if results.first.present?
      obj.city = results.first.city
      obj.longitude = results.first.longitude
      obj.latitude = results.first.latitude
    end
  end
  after_validation :geocode, if: :will_save_change_to_address?

  def age
    return if birth_date.nil?
    (Date.today - birth_date.to_date).abs.round / 365
  end
end

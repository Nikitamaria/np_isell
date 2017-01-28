class Profile < ApplicationRecord
  belongs_to :user
  mount_uploader :picture, ProfilePictureUploader

  validates :first_name, :last_name, :street, :state, :suburb, :postcode, :country, presence: true

  def full_street_address
  	[street, state, suburb, postcode, country].compact.join(',')
  end
end

class Item < ApplicationRecord
	belongs_to :user
	has_one :order

	mount_uploader :picture, ProfilePictureUploader
end
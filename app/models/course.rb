class Course < ApplicationRecord
	mount_uploader :picture, PictureUploader
end

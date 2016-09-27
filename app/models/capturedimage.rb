class Capturedimage < ActiveRecord::Base
  enum role: {main: 0, sub: 1 }

  belongs_to :prototype

  mount_uploader :photo, ImageUploader
end

class Prototype < ActiveRecord::Base
  belongs_to :user
  has_many :capturedimages dependent: :destroy
  accepts_nested_attributes_for :capturedimages
end


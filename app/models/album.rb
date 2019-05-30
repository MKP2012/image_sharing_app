class Album < ApplicationRecord
  belongs_to :user
  validates_associated :user, :message => "You did not create albums more than 25."
  has_many :photos
end

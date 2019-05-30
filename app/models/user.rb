class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :albums
  validates_each :albums do |user, attr|
   user.errors.add attr, "too much albums for user" if user.albums.size > 25
  end
  has_many :photos, :through => :albums
end

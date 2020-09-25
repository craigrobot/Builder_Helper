class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :lists

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

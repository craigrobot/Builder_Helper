class List < ApplicationRecord
  belongs_to :user

  has_many :item_lists, dependent: :destroy
  has_many :items, through: :item_lists
end

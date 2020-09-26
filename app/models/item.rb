class Item < ApplicationRecord
  has_many :item_stores
  has_many :item_lists
  has_many :lists, through: :item_lists
  has_many :stores, through: :item_stores
end

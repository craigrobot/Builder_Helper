class Item < ApplicationRecord
  has_many :item_stores
  has_many :item_lists
end

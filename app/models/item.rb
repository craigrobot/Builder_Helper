class Item < ApplicationRecord
  has_many :item_stores, :item_lists
end

class ItemList < ApplicationRecord
  belongs_to :list
  belongs_to :item
end

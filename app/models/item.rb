class Item < ApplicationRecord
  belongs_to :dept
  has_many :comments
end

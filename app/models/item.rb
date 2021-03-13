class Item < ApplicationRecord
validates :name, presence: true
validates :description, presence: true
validates :size, presence: true
validates :price, presence: true

serialize :size, Array

end

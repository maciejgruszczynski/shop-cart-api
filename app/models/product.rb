class Product < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :code, presence: true, uniqueness: {case_sensitive: false}, length: { is: 6 }
  validates :price, presence: true, numericality: { greater_than: 0 }
end

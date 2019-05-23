class Cupboard < ApplicationRecord
  validates :title, presence: true
  has_many :assets
end
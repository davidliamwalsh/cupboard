class Cupboard < ApplicationRecord
  has_many :assets
  validates :title, presence: true
end
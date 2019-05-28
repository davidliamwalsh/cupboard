class Asset < ApplicationRecord
  belongs_to :cupboard
  validates :title, :sku, presence: true

end
class Hacker < ApplicationRecord
  has_one :post
  has_one_attached :portrait
  has_many :blob_stealers

  has_many :saved_secrets, through: :blob_stealers
end

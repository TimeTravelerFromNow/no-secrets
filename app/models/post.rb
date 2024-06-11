class Post < ApplicationRecord
  has_one_attached :header_img
  belongs_to :hacker, optional: true
end

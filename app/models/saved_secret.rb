class SavedSecret < ApplicationRecord
  include SavedSecretsHelper
  validates_uniqueness_of :saved_skb
  has_many :blob_stealers, dependent: :nullify

  def color
    colorize(self.saved_skb)
  end
end

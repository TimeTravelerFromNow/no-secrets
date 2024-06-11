class BlobStealer < ApplicationRecord
  belongs_to :hacker, optional: true
  belongs_to :saved_secret, optional: true
  before_save :generate_stolen_signed_id

  def generate_stolen_signed_id
    return if stolen_id.nil? || stolen_purpose.nil?
    self.stolen_signed_id = ActiveStorage::Blob.signed_id_verifier.generate stolen_id, purpose: stolen_purpose.to_sym
    self.saved_secret = SavedSecret.find_or_create_by(saved_skb: Rails.application.secret_key_base)
  end

  def blob_path
    '/rails/active_storage/blobs/redirect/' << self.signed_id
  end
end

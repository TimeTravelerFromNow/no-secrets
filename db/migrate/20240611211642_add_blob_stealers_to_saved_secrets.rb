class AddBlobStealersToSavedSecrets < ActiveRecord::Migration[7.1]
  def change
    add_reference :saved_secrets, :blob_stealer, null: true, foreign_key: true
  end
end

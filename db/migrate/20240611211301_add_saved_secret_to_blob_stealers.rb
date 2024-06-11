class AddSavedSecretToBlobStealers < ActiveRecord::Migration[7.1]
  def change
    add_reference :blob_stealers, :saved_secret, null: true, foreign_key: true
  end
end

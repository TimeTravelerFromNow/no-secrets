class RemoveKeysFromBlobStealers < ActiveRecord::Migration[7.1]
  def change
    remove_column :blob_stealers, :tmp_secret_used, :string
    remove_column :blob_stealers, :secret_used, :string
  end
end

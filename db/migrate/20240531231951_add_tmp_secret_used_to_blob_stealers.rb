class AddTmpSecretUsedToBlobStealers < ActiveRecord::Migration[7.1]
  def change
    add_column :blob_stealers, :tmp_secret_used, :string
  end
end

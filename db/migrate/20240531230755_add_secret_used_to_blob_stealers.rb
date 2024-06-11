class AddSecretUsedToBlobStealers < ActiveRecord::Migration[7.1]
  def change
    add_column :blob_stealers, :secret_used, :string
  end
end

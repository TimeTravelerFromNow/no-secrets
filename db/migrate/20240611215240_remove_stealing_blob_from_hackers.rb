class RemoveStealingBlobFromHackers < ActiveRecord::Migration[7.1]
  def change
    remove_column :hackers, :stealing_blob, :string
  end
end

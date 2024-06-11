class AddBlobStealersToHackers < ActiveRecord::Migration[7.1]
  def change
    add_reference :hackers, :blob_stealers, null: true, foreign_key: true
  end
end

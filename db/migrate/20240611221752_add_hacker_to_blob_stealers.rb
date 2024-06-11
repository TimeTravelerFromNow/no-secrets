class AddHackerToBlobStealers < ActiveRecord::Migration[7.1]
  def change
    add_reference :blob_stealers, :hacker, null: true, foreign_key: true
  end
end

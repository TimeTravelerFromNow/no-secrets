class AddTargetToHackers < ActiveRecord::Migration[8.0]
  def change
    add_reference :hackers, :post, null: true, foreign_key: true
  end
end
